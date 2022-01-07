; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_one_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_one_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, i32, i32**)* @verify_one_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_one_addr(%struct.nlattr** %0, i32 %1, i32** %2) #0 {
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  store %struct.nlattr* %12, %struct.nlattr** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %20 = call i32* @nla_data(%struct.nlattr* %19)
  %21 = load i32**, i32*** %6, align 8
  store i32* %20, i32** %21, align 8
  br label %22

22:                                               ; preds = %18, %15, %3
  ret void
}

declare dso_local i32* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
