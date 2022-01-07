; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-nat.c_store_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-nat.c_store_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@ZERO_REGNUM = common dso_local global i32 0, align 4
@PS_REGNUM = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@DEPRECATED_FP_REGNUM = common dso_local global i32 0, align 4
@FIRST_EMBED_REGNUM = common dso_local global i32 0, align 4
@LAST_EMBED_REGNUM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@PT_WRITE_U = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"writing register number %d\00", align 1
@NUM_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_inferior_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [80 x i8], align 16
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %68

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @ZERO_REGNUM, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %48, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @PS_REGNUM, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %48, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @current_gdbarch, align 4
  %18 = call %struct.TYPE_2__* @mips_regnum(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %48, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @current_gdbarch, align 4
  %25 = call %struct.TYPE_2__* @mips_regnum(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %48, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @current_gdbarch, align 4
  %32 = call %struct.TYPE_2__* @mips_regnum(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @DEPRECATED_FP_REGNUM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @FIRST_EMBED_REGNUM, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @LAST_EMBED_REGNUM, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %36, %29, %22, %15, %11, %7
  br label %79

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @register_ptrace_addr(i32 %50)
  store i32 %51, i32* %3, align 4
  store i64 0, i64* @errno, align 8
  %52 = load i32, i32* @PT_WRITE_U, align 4
  %53 = load i32, i32* @inferior_ptid, align 4
  %54 = call i32 @PIDGET(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @read_register(i32 %56)
  %58 = call i32 @ptrace(i32 %52, i32 %54, i32 %55, i32 %57)
  %59 = load i64, i64* @errno, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %49
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %66 = call i32 @perror_with_name(i8* %65)
  br label %67

67:                                               ; preds = %61, %49
  br label %79

68:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %75, %68
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @NUM_REGS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %2, align 4
  call void @store_inferior_registers(i32 %74)
  br label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %69

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %48, %78, %67
  ret void
}

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

declare dso_local i32 @register_ptrace_addr(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @read_register(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
