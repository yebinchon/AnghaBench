; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_copyfb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_copyfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32, i32, i8*, i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@BUF_HIGH_WATER_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*)* @copyfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyfb(%struct.dlfb_data* %0) #0 {
  %2 = alloca %struct.dlfb_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.dlfb_data* %0, %struct.dlfb_data** %2, align 8
  %9 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %10 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %13 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %12, i32 0, i32 4
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %16 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %19 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %163, %1
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %24 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %22, %28
  br i1 %29, label %30, label %166

30:                                               ; preds = %21
  %31 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %32 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i32, i32* @BUF_HIGH_WATER_MARK, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %30
  %42 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %45 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %43 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %42, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %53 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %41, %30
  %56 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %57 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %56, i32 0, i32 5
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %161, %55
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %162

65:                                               ; preds = %62
  %66 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %67 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = load i32, i32* @BUF_HIGH_WATER_MARK, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %65
  %77 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %80 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %78 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %77, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %88 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %8, align 8
  br label %90

90:                                               ; preds = %76, %65
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  store i8 -81, i8* %91, align 1
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  store i8 106, i8* %93, align 1
  %95 = load i32, i32* %3, align 4
  %96 = ashr i32 %95, 16
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  store i8 %97, i8* %98, align 1
  %100 = load i32, i32* %3, align 4
  %101 = ashr i32 %100, 8
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  store i8 %102, i8* %103, align 1
  %105 = load i32, i32* %3, align 4
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %8, align 8
  store i8 %106, i8* %107, align 1
  %109 = load i32, i32* %5, align 4
  %110 = icmp sgt i32 %109, 255
  br i1 %110, label %111, label %134

111:                                              ; preds = %90
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  store i8 -1, i8* %112, align 1
  %114 = load i32, i32* %4, align 4
  %115 = ashr i32 %114, 16
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %8, align 8
  store i8 %116, i8* %117, align 1
  %119 = load i32, i32* %4, align 4
  %120 = ashr i32 %119, 8
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %8, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i32, i32* %4, align 4
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %8, align 8
  store i8 %125, i8* %126, align 1
  %128 = load i32, i32* %5, align 4
  %129 = sub nsw i32 %128, 255
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 510
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 510
  store i32 %133, i32* %4, align 4
  br label %161

134:                                              ; preds = %90
  %135 = load i32, i32* %5, align 4
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %8, align 8
  store i8 %136, i8* %137, align 1
  %139 = load i32, i32* %4, align 4
  %140 = ashr i32 %139, 16
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %8, align 8
  store i8 %141, i8* %142, align 1
  %144 = load i32, i32* %4, align 4
  %145 = ashr i32 %144, 8
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %8, align 8
  store i8 %146, i8* %147, align 1
  %149 = load i32, i32* %4, align 4
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %8, align 8
  store i8 %150, i8* %151, align 1
  %153 = load i32, i32* %5, align 4
  %154 = mul nsw i32 %153, 2
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %5, align 4
  %158 = mul nsw i32 %157, 2
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %134, %111
  br label %62

162:                                              ; preds = %62
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %21

166:                                              ; preds = %21
  %167 = load i8*, i8** %8, align 8
  %168 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %169 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ugt i8* %167, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %176 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = ptrtoint i8* %174 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = trunc i64 %180 to i32
  %182 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %173, i32 %181)
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %172, %166
  %184 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %185 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %184, i32 0, i32 4
  %186 = call i32 @mutex_unlock(i32* %185)
  ret i32 1
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dlfb_bulk_msg(%struct.dlfb_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
