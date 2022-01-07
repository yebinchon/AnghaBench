; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_register_reggroup_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_register_reggroup_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reggroup = type { i32 }
%struct.gdbarch = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@all_reggroup = common dso_local global %struct.reggroup* null, align 8
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@float_reggroup = common dso_local global %struct.reggroup* null, align 8
@vector_reggroup = common dso_local global %struct.reggroup* null, align 8
@general_reggroup = common dso_local global %struct.reggroup* null, align 8
@save_reggroup = common dso_local global %struct.reggroup* null, align 8
@restore_reggroup = common dso_local global %struct.reggroup* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.reggroup*)* @mips_register_reggroup_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_register_reggroup_p(%struct.gdbarch* %0, i32 %1, %struct.reggroup* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reggroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.reggroup* %2, %struct.reggroup** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NUM_REGS, align 4
  %15 = srem i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NUM_REGS, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %20 = load %struct.reggroup*, %struct.reggroup** @all_reggroup, align 8
  %21 = icmp eq %struct.reggroup* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %120

24:                                               ; preds = %3
  %25 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @register_type(%struct.gdbarch* %25, i32 %26)
  %28 = call i32 @TYPE_VECTOR(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @register_type(%struct.gdbarch* %29, i32 %30)
  %32 = call i64 @TYPE_CODE(i32 %31)
  %33 = load i64, i64* @TYPE_CODE_FLT, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @NUM_REGS, align 4
  %38 = icmp slt i32 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @REGISTER_NAME(i32 %40)
  %42 = icmp eq i8* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %6, align 4
  %45 = call i8* @REGISTER_NAME(i32 %44)
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %24
  store i32 0, i32* %4, align 4
  br label %120

51:                                               ; preds = %43
  %52 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %53 = load %struct.reggroup*, %struct.reggroup** @float_reggroup, align 8
  %54 = icmp eq %struct.reggroup* %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ false, %55 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %120

64:                                               ; preds = %51
  %65 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %66 = load %struct.reggroup*, %struct.reggroup** @vector_reggroup, align 8
  %67 = icmp eq %struct.reggroup* %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ false, %68 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %120

77:                                               ; preds = %64
  %78 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %79 = load %struct.reggroup*, %struct.reggroup** @general_reggroup, align 8
  %80 = icmp eq %struct.reggroup* %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %87, %84, %81
  %91 = phi i1 [ false, %84 ], [ false, %81 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %120

93:                                               ; preds = %77
  %94 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %95 = load %struct.reggroup*, %struct.reggroup** @save_reggroup, align 8
  %96 = icmp eq %struct.reggroup* %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i1 [ false, %97 ], [ %102, %100 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %120

106:                                              ; preds = %93
  %107 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %108 = load %struct.reggroup*, %struct.reggroup** @restore_reggroup, align 8
  %109 = icmp eq %struct.reggroup* %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi i1 [ false, %110 ], [ %115, %113 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %4, align 4
  br label %120

119:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %116, %103, %90, %74, %61, %50, %22
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @TYPE_VECTOR(i32) #1

declare dso_local i32 @register_type(%struct.gdbarch*, i32) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
