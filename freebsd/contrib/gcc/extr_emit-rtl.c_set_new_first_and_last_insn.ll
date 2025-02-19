; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_set_new_first_and_last_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_set_new_first_and_last_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@first_insn = common dso_local global i8* null, align 8
@last_insn = common dso_local global i8* null, align 8
@cur_insn_uid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_new_first_and_last_insn(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** @first_insn, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** @last_insn, align 8
  store i64 0, i64* @cur_insn_uid, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %17, %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i64, i64* @cur_insn_uid, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @INSN_UID(i8* %14)
  %16 = call i64 @MAX(i64 %13, i32 %15)
  store i64 %16, i64* @cur_insn_uid, align 8
  br label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @NEXT_INSN(i8* %18)
  store i8* %19, i8** %5, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load i64, i64* @cur_insn_uid, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @cur_insn_uid, align 8
  ret void
}

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i32 @INSN_UID(i8*) #1

declare dso_local i8* @NEXT_INSN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
