; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c___register_chrdev_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_char_dev.c___register_chrdev_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.char_device_struct = type { i32, i32, i32, %struct.char_device_struct*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@chrdevs_lock = common dso_local global i32 0, align 4
@chrdevs = common dso_local global %struct.char_device_struct** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.char_device_struct* (i32, i32, i32, i8*)* @__register_chrdev_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.char_device_struct* @__register_chrdev_region(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.char_device_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.char_device_struct*, align 8
  %11 = alloca %struct.char_device_struct**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.char_device_struct* @kzalloc(i32 32, i32 %18)
  store %struct.char_device_struct* %19, %struct.char_device_struct** %10, align 8
  %20 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %21 = icmp eq %struct.char_device_struct* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.char_device_struct* @ERR_PTR(i32 %24)
  store %struct.char_device_struct* %25, %struct.char_device_struct** %5, align 8
  br label %190

26:                                               ; preds = %4
  %27 = call i32 @mutex_lock(i32* @chrdevs_lock)
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load %struct.char_device_struct**, %struct.char_device_struct*** @chrdevs, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.char_device_struct** %31)
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %46, %30
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.char_device_struct**, %struct.char_device_struct*** @chrdevs, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.char_device_struct*, %struct.char_device_struct** %38, i64 %40
  %42 = load %struct.char_device_struct*, %struct.char_device_struct** %41, align 8
  %43 = icmp eq %struct.char_device_struct* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %13, align 4
  br label %34

49:                                               ; preds = %44, %34
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %184

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %26
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %61 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %64 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %67 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %69 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @strlcpy(i32 %70, i8* %71, i32 4)
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @major_to_index(i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.char_device_struct**, %struct.char_device_struct*** @chrdevs, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.char_device_struct*, %struct.char_device_struct** %75, i64 %77
  store %struct.char_device_struct** %78, %struct.char_device_struct*** %11, align 8
  br label %79

79:                                               ; preds = %118, %58
  %80 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %81 = load %struct.char_device_struct*, %struct.char_device_struct** %80, align 8
  %82 = icmp ne %struct.char_device_struct* %81, null
  br i1 %82, label %83, label %122

83:                                               ; preds = %79
  %84 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %85 = load %struct.char_device_struct*, %struct.char_device_struct** %84, align 8
  %86 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %116, label %90

90:                                               ; preds = %83
  %91 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %92 = load %struct.char_device_struct*, %struct.char_device_struct** %91, align 8
  %93 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %99 = load %struct.char_device_struct*, %struct.char_device_struct** %98, align 8
  %100 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp uge i32 %101, %102
  br i1 %103, label %116, label %104

104:                                              ; preds = %97
  %105 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %106 = load %struct.char_device_struct*, %struct.char_device_struct** %105, align 8
  %107 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %110 = load %struct.char_device_struct*, %struct.char_device_struct** %109, align 8
  %111 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add i32 %108, %112
  %114 = load i32, i32* %7, align 4
  %115 = icmp ugt i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %104, %97, %83
  br label %122

117:                                              ; preds = %104, %90
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %120 = load %struct.char_device_struct*, %struct.char_device_struct** %119, align 8
  %121 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %120, i32 0, i32 3
  store %struct.char_device_struct** %121, %struct.char_device_struct*** %11, align 8
  br label %79

122:                                              ; preds = %116, %79
  %123 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %124 = load %struct.char_device_struct*, %struct.char_device_struct** %123, align 8
  %125 = icmp ne %struct.char_device_struct* %124, null
  br i1 %125, label %126, label %175

126:                                              ; preds = %122
  %127 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %128 = load %struct.char_device_struct*, %struct.char_device_struct** %127, align 8
  %129 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %175

133:                                              ; preds = %126
  %134 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %135 = load %struct.char_device_struct*, %struct.char_device_struct** %134, align 8
  %136 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  %138 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %139 = load %struct.char_device_struct*, %struct.char_device_struct** %138, align 8
  %140 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %143 = load %struct.char_device_struct*, %struct.char_device_struct** %142, align 8
  %144 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = add i32 %141, %145
  %147 = sub i32 %146, 1
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = add i32 %149, %150
  %152 = sub i32 %151, 1
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %133
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* @EBUSY, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %12, align 4
  br label %184

163:                                              ; preds = %156, %133
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %163
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32, i32* @EBUSY, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %12, align 4
  br label %184

174:                                              ; preds = %167, %163
  br label %175

175:                                              ; preds = %174, %126, %122
  %176 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  %177 = load %struct.char_device_struct*, %struct.char_device_struct** %176, align 8
  %178 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %179 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %178, i32 0, i32 3
  store %struct.char_device_struct* %177, %struct.char_device_struct** %179, align 8
  %180 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %181 = load %struct.char_device_struct**, %struct.char_device_struct*** %11, align 8
  store %struct.char_device_struct* %180, %struct.char_device_struct** %181, align 8
  %182 = call i32 @mutex_unlock(i32* @chrdevs_lock)
  %183 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  store %struct.char_device_struct* %183, %struct.char_device_struct** %5, align 8
  br label %190

184:                                              ; preds = %171, %160, %52
  %185 = call i32 @mutex_unlock(i32* @chrdevs_lock)
  %186 = load %struct.char_device_struct*, %struct.char_device_struct** %10, align 8
  %187 = call i32 @kfree(%struct.char_device_struct* %186)
  %188 = load i32, i32* %12, align 4
  %189 = call %struct.char_device_struct* @ERR_PTR(i32 %188)
  store %struct.char_device_struct* %189, %struct.char_device_struct** %5, align 8
  br label %190

190:                                              ; preds = %184, %175, %22
  %191 = load %struct.char_device_struct*, %struct.char_device_struct** %5, align 8
  ret %struct.char_device_struct* %191
}

declare dso_local %struct.char_device_struct* @kzalloc(i32, i32) #1

declare dso_local %struct.char_device_struct* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.char_device_struct**) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @major_to_index(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.char_device_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
