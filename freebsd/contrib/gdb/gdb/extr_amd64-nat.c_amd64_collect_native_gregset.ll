; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-nat.c_amd64_collect_native_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-nat.c_amd64_collect_native_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.gdbarch = type { i32 }

@amd64_native_gregset64_num_regs = common dso_local global i32 0, align 4
@amd64_native_gregset32_num_regs = common dso_local global i32 0, align 4
@I386_EIP_REGNUM = common dso_local global i32 0, align 4
@I386_CS_REGNUM = common dso_local global i32 0, align 4
@I386_GS_REGNUM = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64_collect_native_gregset(%struct.regcache* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gdbarch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.regcache*, %struct.regcache** %4, align 8
  %14 = call %struct.gdbarch* @get_regcache_arch(%struct.regcache* %13)
  store %struct.gdbarch* %14, %struct.gdbarch** %8, align 8
  %15 = load i32, i32* @amd64_native_gregset64_num_regs, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %17 = call i32 @gdbarch_ptr_bit(%struct.gdbarch* %16)
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %68

19:                                               ; preds = %3
  %20 = load i32, i32* @amd64_native_gregset32_num_regs, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %40, %19
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @I386_EIP_REGNUM, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @amd64_native_gregset_reg_offset(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = call i32 @memset(i8* %37, i32 0, i32 8)
  br label %39

39:                                               ; preds = %32, %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load i32, i32* @I386_CS_REGNUM, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %64, %43
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @I386_GS_REGNUM, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52, %49
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @amd64_native_gregset_reg_offset(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = call i32 @memset(i8* %61, i32 0, i32 8)
  br label %63

63:                                               ; preds = %56, %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %45

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67, %3
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @NUM_REGS, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @NUM_REGS, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %68
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @amd64_native_gregset_reg_offset(i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.regcache*, %struct.regcache** %4, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = call i32 @regcache_raw_collect(%struct.regcache* %92, i32 %93, i8* %97)
  br label %99

99:                                               ; preds = %91, %86
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %75

104:                                              ; preds = %75
  ret void
}

declare dso_local %struct.gdbarch* @get_regcache_arch(%struct.regcache*) #1

declare dso_local i32 @gdbarch_ptr_bit(%struct.gdbarch*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @amd64_native_gregset_reg_offset(i32) #1

declare dso_local i32 @regcache_raw_collect(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
