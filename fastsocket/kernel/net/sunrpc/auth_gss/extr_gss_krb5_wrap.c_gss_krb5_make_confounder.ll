; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_krb5_make_confounder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_krb5_make_confounder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gss_krb5_make_confounder.i = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gss_krb5_make_confounder(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32, i32* @gss_krb5_make_confounder.i, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = call i32 (...) @random32()
  store i32 %11, i32* @gss_krb5_make_confounder.i, align 4
  %12 = load i32, i32* @gss_krb5_make_confounder.i, align 4
  %13 = shl i32 %12, 32
  %14 = call i32 (...) @random32()
  %15 = or i32 %13, %14
  store i32 %15, i32* @gss_krb5_make_confounder.i, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %28 [
    i32 16, label %18
    i32 8, label %23
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @gss_krb5_make_confounder.i, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @gss_krb5_make_confounder.i, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  store i32 %19, i32* %21, align 4
  br label %23

23:                                               ; preds = %16, %18
  %24 = load i32, i32* @gss_krb5_make_confounder.i, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @gss_krb5_make_confounder.i, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  store i32 %24, i32* %26, align 4
  br label %30

28:                                               ; preds = %16
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @random32(...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
