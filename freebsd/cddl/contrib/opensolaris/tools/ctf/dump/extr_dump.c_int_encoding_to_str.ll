; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_int_encoding_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/dump/extr_dump.c_int_encoding_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@int_encoding_to_str.buf = internal global [32 x i8] zeroinitializer, align 16
@CTF_INT_SIGNED = common dso_local global i32 0, align 4
@CTF_INT_CHAR = common dso_local global i32 0, align 4
@CTF_INT_BOOL = common dso_local global i32 0, align 4
@CTF_INT_VARARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" SIGNED\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" CHAR\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" BOOL\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" VARARGS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @int_encoding_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @int_encoding_to_str(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @CTF_INT_SIGNED, align 4
  %8 = load i32, i32* @CTF_INT_CHAR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CTF_INT_BOOL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CTF_INT_VARARGS, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %6, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @int_encoding_to_str.buf, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %49

20:                                               ; preds = %5
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @int_encoding_to_str.buf, i64 0, i64 0), align 16
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @CTF_INT_SIGNED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @int_encoding_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @CTF_INT_CHAR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @int_encoding_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @CTF_INT_BOOL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @int_encoding_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @CTF_INT_VARARGS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @strcat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @int_encoding_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  br label %49

49:                                               ; preds = %48, %17
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @int_encoding_to_str.buf, i64 0, i64 1)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
