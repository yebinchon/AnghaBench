; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmisc.c_ld_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmisc.c_ld_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"%P: internal error: aborting at %s line %d in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%P: internal error: aborting at %s line %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%P%F: please report this bug\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ld_abort(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 (i32, ...) @einfo(i32 %10, i8* %11, i32 %12, i8* %13)
  br label %20

15:                                               ; preds = %3
  %16 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, ...) @einfo(i32 %16, i8* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %9
  %21 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 (i32, ...) @einfo(i32 %21)
  %23 = call i32 @xexit(i32 1)
  ret void
}

declare dso_local i32 @einfo(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @xexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
