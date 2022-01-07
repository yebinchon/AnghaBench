; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_record_insn_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_record_insn_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@record_insn_name.last_real_name = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [5 x i8] c"insn\00", align 1
@record_insn_name.last_real_code = internal global i32 0, align 4
@insn_name_ptr_size = common dso_local global i32 0, align 4
@insn_name_ptr = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s+%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @record_insn_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_insn_name(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @insn_name_ptr_size, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load i32, i32* @insn_name_ptr_size, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @insn_name_ptr_size, align 4
  %15 = mul nsw i32 %14, 2
  br label %17

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 512, %16 ]
  store i32 %18, i32* %6, align 4
  %19 = load i8**, i8*** @insn_name_ptr, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i8** @xrealloc(i8** %19, i32 %23)
  store i8** %24, i8*** @insn_name_ptr, align 8
  %25 = load i8**, i8*** @insn_name_ptr, align 8
  %26 = load i32, i32* @insn_name_ptr_size, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @insn_name_ptr_size, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i8** %28, i32 0, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* @insn_name_ptr_size, align 4
  br label %37

37:                                               ; preds = %17, %2
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %40, %37
  %47 = load i8*, i8** @record_insn_name.last_real_name, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = add nsw i64 %48, 10
  %50 = call i8* @xmalloc(i64 %49)
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** @record_insn_name.last_real_name, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @record_insn_name.last_real_code, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %55)
  br label %61

57:                                               ; preds = %40
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @xstrdup(i8* %58)
  store i8* %59, i8** %5, align 8
  store i8* %59, i8** @record_insn_name.last_real_name, align 8
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* @record_insn_name.last_real_code, align 4
  br label %61

61:                                               ; preds = %57, %46
  %62 = load i8*, i8** %5, align 8
  %63 = load i8**, i8*** @insn_name_ptr, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %62, i8** %66, align 8
  ret void
}

declare dso_local i8** @xrealloc(i8**, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
