; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_dbg_print_ptype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_dbg_print_ptype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbg_print_ptype.buf = internal global [256 x i8] zeroinitializer, align 16
@P_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@P_PROMPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@P_COMMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@P_MENU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@P_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@P_CHOICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"choice\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dbg_print_ptype(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @bzero(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_ptype.buf, i64 0, i64 0), i32 256)
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @P_UNKNOWN, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_ptype.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @P_PROMPT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_ptype.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @P_COMMENT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_ptype.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @P_MENU, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_ptype.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @P_DEFAULT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_ptype.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @P_CHOICE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_ptype.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dbg_print_ptype.buf, i64 0, i64 0)
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
