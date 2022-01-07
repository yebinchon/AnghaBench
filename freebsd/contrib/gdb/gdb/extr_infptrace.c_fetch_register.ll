; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infptrace.c_fetch_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infptrace.c_fetch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@U_REGS_OFFSET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@PT_READ_U = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"reading register %s (#%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fetch_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @CANNOT_FETCH_REGISTER(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %19)
  %21 = call i32 @memset(i8* %14, i8 signext 0, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @supply_register(i32 %22, i8* %14)
  store i32 1, i32* %10, align 4
  br label %72

24:                                               ; preds = %1
  %25 = load i32, i32* @inferior_ptid, align 4
  %26 = call i32 @TIDGET(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @inferior_ptid, align 4
  %30 = call i32 @PIDGET(i32 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* @U_REGS_OFFSET, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @register_addr(i32 %33, i32 %34)
  store i64 %35, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %64, %31
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  store i64 0, i64* @errno, align 8
  %42 = load i32, i32* @PT_READ_U, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* %3, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @ptrace(i32 %42, i32 %43, i32 %45, i32 0)
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %14, i64 %48
  %50 = bitcast i8* %49 to i32*
  store i32 %46, i32* %50, align 1
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* @errno, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %41
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %57 = load i32, i32* %2, align 4
  %58 = call i8* @REGISTER_NAME(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %59)
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %62 = call i32 @perror_with_name(i8* %61)
  br label %63

63:                                               ; preds = %55, %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %36

69:                                               ; preds = %36
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @supply_register(i32 %70, i8* %14)
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %18
  %73 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %10, align 4
  switch i32 %74, label %76 [
    i32 0, label %75
    i32 1, label %75
  ]

75:                                               ; preds = %72, %72
  ret void

76:                                               ; preds = %72
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CANNOT_FETCH_REGISTER(i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i32 @supply_register(i32, i8*) #2

declare dso_local i32 @TIDGET(i32) #2

declare dso_local i32 @PIDGET(i32) #2

declare dso_local i64 @register_addr(i32, i32) #2

declare dso_local i32 @ptrace(i32, i32, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i8* @REGISTER_NAME(i32) #2

declare dso_local i32 @perror_with_name(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
