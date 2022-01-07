; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infptrace.c_store_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infptrace.c_store_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@U_REGS_OFFSET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@PT_WRITE_U = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"writing register %s (#%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @store_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @CANNOT_STORE_REGISTER(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  br label %68

19:                                               ; preds = %1
  %20 = load i32, i32* @inferior_ptid, align 4
  %21 = call i32 @TIDGET(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i32 @PIDGET(i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* @U_REGS_OFFSET, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @register_addr(i32 %28, i32 %29)
  store i64 %30, i64* %3, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @regcache_collect(i32 %31, i8* %14)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %62, %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  store i64 0, i64* @errno, align 8
  %39 = load i32, i32* @PT_WRITE_U, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %3, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %14, i64 %44
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ptrace(i32 %39, i32 %40, i32 %42, i32 %47)
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* @errno, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %55 = load i32, i32* %2, align 4
  %56 = call i8* @REGISTER_NAME(i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %57)
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %60 = call i32 @perror_with_name(i8* %59)
  br label %61

61:                                               ; preds = %53, %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %33

67:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %18
  %69 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %10, align 4
  switch i32 %70, label %72 [
    i32 0, label %71
    i32 1, label %71
  ]

71:                                               ; preds = %68, %68
  ret void

72:                                               ; preds = %68
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CANNOT_STORE_REGISTER(i32) #2

declare dso_local i32 @TIDGET(i32) #2

declare dso_local i32 @PIDGET(i32) #2

declare dso_local i64 @register_addr(i32, i32) #2

declare dso_local i32 @regcache_collect(i32, i8*) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

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
