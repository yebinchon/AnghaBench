; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { i32 }
%struct.debug_write_fns = type { i32 (i8*)*, i32 (i8*, i32, i32, i32)*, i32 (i8*, i8*, i32)* }
%struct.debug_function = type { %struct.debug_block*, %struct.debug_parameter*, i32 }
%struct.debug_block = type { %struct.debug_block*, i32 }
%struct.debug_parameter = type { i32, i32, i32, i32, %struct.debug_parameter* }
%struct.debug_name = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DEBUG_LINKAGE_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_handle*, %struct.debug_write_fns*, i8*, i8*, i32, %struct.debug_function*)* @debug_write_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_write_function(%struct.debug_handle* %0, %struct.debug_write_fns* %1, i8* %2, i8* %3, i32 %4, %struct.debug_function* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.debug_handle*, align 8
  %9 = alloca %struct.debug_write_fns*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.debug_function*, align 8
  %14 = alloca %struct.debug_parameter*, align 8
  %15 = alloca %struct.debug_block*, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %8, align 8
  store %struct.debug_write_fns* %1, %struct.debug_write_fns** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.debug_function* %5, %struct.debug_function** %13, align 8
  %16 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %17 = load %struct.debug_write_fns*, %struct.debug_write_fns** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.debug_function*, %struct.debug_function** %13, align 8
  %20 = getelementptr inbounds %struct.debug_function, %struct.debug_function* %19, i32 0, i32 0
  %21 = load %struct.debug_block*, %struct.debug_block** %20, align 8
  %22 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @debug_write_linenos(%struct.debug_handle* %16, %struct.debug_write_fns* %17, i8* %18, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %7, align 4
  br label %119

28:                                               ; preds = %6
  %29 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %30 = load %struct.debug_write_fns*, %struct.debug_write_fns** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.debug_function*, %struct.debug_function** %13, align 8
  %33 = getelementptr inbounds %struct.debug_function, %struct.debug_function* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @debug_write_type(%struct.debug_handle* %29, %struct.debug_write_fns* %30, i8* %31, i32 %34, %struct.debug_name* null)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %7, align 4
  br label %119

39:                                               ; preds = %28
  %40 = load %struct.debug_write_fns*, %struct.debug_write_fns** %9, align 8
  %41 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %40, i32 0, i32 2
  %42 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %41, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @DEBUG_LINKAGE_GLOBAL, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 %42(i8* %43, i8* %44, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %7, align 4
  br label %119

53:                                               ; preds = %39
  %54 = load %struct.debug_function*, %struct.debug_function** %13, align 8
  %55 = getelementptr inbounds %struct.debug_function, %struct.debug_function* %54, i32 0, i32 1
  %56 = load %struct.debug_parameter*, %struct.debug_parameter** %55, align 8
  store %struct.debug_parameter* %56, %struct.debug_parameter** %14, align 8
  br label %57

57:                                               ; preds = %88, %53
  %58 = load %struct.debug_parameter*, %struct.debug_parameter** %14, align 8
  %59 = icmp ne %struct.debug_parameter* %58, null
  br i1 %59, label %60, label %92

60:                                               ; preds = %57
  %61 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %62 = load %struct.debug_write_fns*, %struct.debug_write_fns** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.debug_parameter*, %struct.debug_parameter** %14, align 8
  %65 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @debug_write_type(%struct.debug_handle* %61, %struct.debug_write_fns* %62, i8* %63, i32 %66, %struct.debug_name* null)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %60
  %70 = load %struct.debug_write_fns*, %struct.debug_write_fns** %9, align 8
  %71 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %70, i32 0, i32 1
  %72 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %71, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.debug_parameter*, %struct.debug_parameter** %14, align 8
  %75 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.debug_parameter*, %struct.debug_parameter** %14, align 8
  %78 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.debug_parameter*, %struct.debug_parameter** %14, align 8
  %81 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %72(i8* %73, i32 %76, i32 %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %69, %60
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %7, align 4
  br label %119

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.debug_parameter*, %struct.debug_parameter** %14, align 8
  %90 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %89, i32 0, i32 4
  %91 = load %struct.debug_parameter*, %struct.debug_parameter** %90, align 8
  store %struct.debug_parameter* %91, %struct.debug_parameter** %14, align 8
  br label %57

92:                                               ; preds = %57
  %93 = load %struct.debug_function*, %struct.debug_function** %13, align 8
  %94 = getelementptr inbounds %struct.debug_function, %struct.debug_function* %93, i32 0, i32 0
  %95 = load %struct.debug_block*, %struct.debug_block** %94, align 8
  store %struct.debug_block* %95, %struct.debug_block** %15, align 8
  br label %96

96:                                               ; preds = %109, %92
  %97 = load %struct.debug_block*, %struct.debug_block** %15, align 8
  %98 = icmp ne %struct.debug_block* %97, null
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %101 = load %struct.debug_write_fns*, %struct.debug_write_fns** %9, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.debug_block*, %struct.debug_block** %15, align 8
  %104 = call i32 @debug_write_block(%struct.debug_handle* %100, %struct.debug_write_fns* %101, i8* %102, %struct.debug_block* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %7, align 4
  br label %119

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.debug_block*, %struct.debug_block** %15, align 8
  %111 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %110, i32 0, i32 0
  %112 = load %struct.debug_block*, %struct.debug_block** %111, align 8
  store %struct.debug_block* %112, %struct.debug_block** %15, align 8
  br label %96

113:                                              ; preds = %96
  %114 = load %struct.debug_write_fns*, %struct.debug_write_fns** %9, align 8
  %115 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %114, i32 0, i32 0
  %116 = load i32 (i8*)*, i32 (i8*)** %115, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 %116(i8* %117)
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %113, %106, %85, %51, %37, %26
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @debug_write_linenos(%struct.debug_handle*, %struct.debug_write_fns*, i8*, i32) #1

declare dso_local i32 @debug_write_type(%struct.debug_handle*, %struct.debug_write_fns*, i8*, i32, %struct.debug_name*) #1

declare dso_local i32 @debug_write_block(%struct.debug_handle*, %struct.debug_write_fns*, i8*, %struct.debug_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
