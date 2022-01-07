; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_parse_ipsecrequests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_parse_ipsecrequests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.sadb_x_policy = type { i32 }
%struct.sadb_x_ipsecrequest = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.sadb_x_policy*)* @parse_ipsecrequests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipsecrequests(%struct.xfrm_policy* %0, %struct.sadb_x_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.sadb_x_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sadb_x_ipsecrequest*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.sadb_x_policy* %1, %struct.sadb_x_policy** %5, align 8
  %9 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %5, align 8
  %10 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 8
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %5, align 8
  %17 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %16, i64 1
  %18 = bitcast %struct.sadb_x_policy* %17 to i8*
  %19 = bitcast i8* %18 to %struct.sadb_x_ipsecrequest*
  store %struct.sadb_x_ipsecrequest* %19, %struct.sadb_x_ipsecrequest** %8, align 8
  br label %20

20:                                               ; preds = %31, %2
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 %22, 4
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %26 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %27 = call i32 @parse_ipsecrequest(%struct.xfrm_policy* %25, %struct.sadb_x_ipsecrequest* %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %33 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %38 = bitcast %struct.sadb_x_ipsecrequest* %37 to i32*
  %39 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %40 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = bitcast i32* %43 to i8*
  %45 = bitcast i8* %44 to %struct.sadb_x_ipsecrequest*
  store %struct.sadb_x_ipsecrequest* %45, %struct.sadb_x_ipsecrequest** %8, align 8
  br label %20

46:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @parse_ipsecrequest(%struct.xfrm_policy*, %struct.sadb_x_ipsecrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
