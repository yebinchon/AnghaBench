; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_encode_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_encode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_cookie = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nlm_cookie*)* @nlm4_encode_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nlm4_encode_cookie(i32* %0, %struct.nlm_cookie* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nlm_cookie*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.nlm_cookie* %1, %struct.nlm_cookie** %4, align 8
  %5 = load %struct.nlm_cookie*, %struct.nlm_cookie** %4, align 8
  %6 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @htonl(i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %3, align 8
  store i32 %8, i32* %9, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.nlm_cookie*, %struct.nlm_cookie** %4, align 8
  %13 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nlm_cookie*, %struct.nlm_cookie** %4, align 8
  %16 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(i32* %11, i32 %14, i32 %17)
  %19 = load %struct.nlm_cookie*, %struct.nlm_cookie** %4, align 8
  %20 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @XDR_QUADLEN(i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
