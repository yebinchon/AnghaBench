; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_ubifs_find_free_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_find.c_ubifs_find_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.ubifs_lprops = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"min_space %d\00", align 1
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_NC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"found LEB %d, free %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_find_free_space(%struct.ubifs_info* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_lprops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, i32, ...) @dbg_find(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %20 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 4
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %35, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %12, align 4
  br label %43

42:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %32
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %47, %50
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %55, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %43
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %68, %72
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %64
  store i32 1, i32* %13, align 4
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %64
  br label %82

82:                                               ; preds = %81, %43
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 4
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call %struct.ubifs_lprops* @do_find_free_space(%struct.ubifs_info* %86, i32 %87, i32 %88, i32 %89)
  store %struct.ubifs_lprops* %90, %struct.ubifs_lprops** %10, align 8
  %91 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %92 = call i64 @IS_ERR(%struct.ubifs_lprops* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %96 = call i32 @PTR_ERR(%struct.ubifs_lprops* %95)
  store i32 %96, i32* %14, align 4
  br label %176

97:                                               ; preds = %82
  %98 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %99 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %15, align 4
  %101 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %102 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @LPROPS_TAKEN, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* %16, align 4
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %107 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %108 = load i32, i32* @LPROPS_NC, align 4
  %109 = load i32, i32* @LPROPS_NC, align 4
  %110 = load i32, i32* %16, align 4
  %111 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %106, %struct.ubifs_lprops* %107, i32 %108, i32 %109, i32 %110, i32 0)
  store %struct.ubifs_lprops* %111, %struct.ubifs_lprops** %10, align 8
  %112 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %113 = call i64 @IS_ERR(%struct.ubifs_lprops* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %97
  %116 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %117 = call i32 @PTR_ERR(%struct.ubifs_lprops* %116)
  store i32 %117, i32* %14, align 4
  br label %176

118:                                              ; preds = %97
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %122, i32 0, i32 4
  %124 = call i32 @spin_lock(i32* %123)
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %131 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %130, i32 0, i32 4
  %132 = call i32 @spin_unlock(i32* %131)
  br label %133

133:                                              ; preds = %121, %118
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %10, align 8
  %138 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %136, %139
  %141 = load i32*, i32** %8, align 8
  store i32 %140, i32* %141, align 4
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %143 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %142)
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %133
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %148, i32 %149)
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %5, align 4
  br label %195

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %133
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %159 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %160, %162
  %164 = call i32 (i8*, i32, ...) @dbg_find(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %163)
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %168 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sub nsw i32 %169, %170
  %172 = icmp sle i32 %166, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @ubifs_assert(i32 %173)
  %175 = load i32, i32* %15, align 4
  store i32 %175, i32* %5, align 4
  br label %195

176:                                              ; preds = %115, %94
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %176
  %180 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %181 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %180, i32 0, i32 4
  %182 = call i32 @spin_lock(i32* %181)
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %184 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %189 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %188, i32 0, i32 4
  %190 = call i32 @spin_unlock(i32* %189)
  br label %191

191:                                              ; preds = %179, %176
  %192 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %193 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %192)
  %194 = load i32, i32* %14, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %191, %156, %153
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @dbg_find(i8*, i32, ...) #1

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ubifs_lprops* @do_find_free_space(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
