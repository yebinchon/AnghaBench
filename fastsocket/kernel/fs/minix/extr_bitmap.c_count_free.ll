; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_count_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_count_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32* }

@nibblemap = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buffer_head**, i32, i32)* @count_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count_free(%struct.buffer_head** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.buffer_head**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head** %0, %struct.buffer_head*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %67, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %14, 1
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %12
  %18 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %18, i64 %20
  %22 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* %22, %struct.buffer_head** %11, align 8
  %23 = icmp ne %struct.buffer_head* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i64 0, i64* %4, align 8
  br label %190

25:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %63, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %26
  %33 = load i64*, i64** @nibblemap, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %33, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @nibblemap, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 4
  %54 = and i32 %53, 15
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %45, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %44, %57
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %32
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %26

66:                                               ; preds = %26
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %12

70:                                               ; preds = %12
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sub i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %74, i64 %77
  %79 = load %struct.buffer_head*, %struct.buffer_head** %78, align 8
  store %struct.buffer_head* %79, %struct.buffer_head** %11, align 8
  %80 = icmp ne %struct.buffer_head* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %73, %70
  store i64 0, i64* %4, align 8
  br label %190

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sub i32 %84, 1
  %86 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul i32 %85, %88
  %90 = mul i32 %89, 8
  %91 = sub i32 %83, %90
  %92 = udiv i32 %91, 16
  %93 = mul i32 %92, 2
  store i32 %93, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %129, %82
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %132

98:                                               ; preds = %94
  %99 = load i64*, i64** @nibblemap, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %101 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 15
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %99, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** @nibblemap, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %113 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 4
  %120 = and i32 %119, 15
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %111, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %110, %123
  %125 = load i32, i32* %10, align 4
  %126 = zext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %98
  %130 = load i32, i32* %9, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %94

132:                                              ; preds = %94
  %133 = load i32, i32* %7, align 4
  %134 = urem i32 %133, 16
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %187

137:                                              ; preds = %132
  %138 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = shl i32 1, %145
  %147 = sub nsw i32 %146, 1
  %148 = xor i32 %147, -1
  %149 = or i32 %144, %148
  store i32 %149, i32* %8, align 4
  %150 = load i64*, i64** @nibblemap, align 8
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, 15
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** @nibblemap, align 8
  %157 = load i32, i32* %8, align 4
  %158 = lshr i32 %157, 4
  %159 = and i32 %158, 15
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %156, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %155, %162
  %164 = load i32, i32* %10, align 4
  %165 = zext i32 %164 to i64
  %166 = add nsw i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %10, align 4
  %168 = load i64*, i64** @nibblemap, align 8
  %169 = load i32, i32* %8, align 4
  %170 = lshr i32 %169, 8
  %171 = and i32 %170, 15
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %168, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i64*, i64** @nibblemap, align 8
  %176 = load i32, i32* %8, align 4
  %177 = lshr i32 %176, 12
  %178 = and i32 %177, 15
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %175, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %174, %181
  %183 = load i32, i32* %10, align 4
  %184 = zext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %137, %132
  %188 = load i32, i32* %10, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %4, align 8
  br label %190

190:                                              ; preds = %187, %81, %24
  %191 = load i64, i64* %4, align 8
  ret i64 %191
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
