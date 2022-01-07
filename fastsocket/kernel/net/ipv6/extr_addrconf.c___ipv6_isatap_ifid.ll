; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c___ipv6_isatap_ifid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c___ipv6_isatap_ifid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipv6_isatap_ifid(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %68

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @ipv4_is_zeronet(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @ipv4_is_private_10(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @ipv4_is_loopback(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @ipv4_is_linklocal_169(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @ipv4_is_private_172(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @ipv4_is_test_192(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @ipv4_is_anycast_6to4(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @ipv4_is_private_192(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @ipv4_is_test_198(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @ipv4_is_multicast(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @ipv4_is_lbcast(i64 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9
  %54 = phi i1 [ true, %45 ], [ true, %41 ], [ true, %37 ], [ true, %33 ], [ true, %29 ], [ true, %25 ], [ true, %21 ], [ true, %17 ], [ true, %13 ], [ true, %9 ], [ %52, %49 ]
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 2
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 94, i32* %62, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 254, i32* %64, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i32 @memcpy(i32* %66, i64* %5, i32 4)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %53, %8
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @ipv4_is_zeronet(i64) #1

declare dso_local i64 @ipv4_is_private_10(i64) #1

declare dso_local i64 @ipv4_is_loopback(i64) #1

declare dso_local i64 @ipv4_is_linklocal_169(i64) #1

declare dso_local i64 @ipv4_is_private_172(i64) #1

declare dso_local i64 @ipv4_is_test_192(i64) #1

declare dso_local i64 @ipv4_is_anycast_6to4(i64) #1

declare dso_local i64 @ipv4_is_private_192(i64) #1

declare dso_local i64 @ipv4_is_test_198(i64) #1

declare dso_local i64 @ipv4_is_multicast(i64) #1

declare dso_local i64 @ipv4_is_lbcast(i64) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
