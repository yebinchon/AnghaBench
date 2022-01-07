; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svc_safe_getnetobj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_svc_safe_getnetobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32, i32 }
%struct.xdr_netobj = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, %struct.xdr_netobj*)* @svc_safe_getnetobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_safe_getnetobj(%struct.kvec* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvec*, align 8
  %5 = alloca %struct.xdr_netobj*, align 8
  %6 = alloca i32, align 4
  store %struct.kvec* %0, %struct.kvec** %4, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %5, align 8
  %7 = load %struct.kvec*, %struct.kvec** %4, align 8
  %8 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.kvec*, %struct.kvec** %4, align 8
  %14 = call i32 @svc_getnl(%struct.kvec* %13)
  %15 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %16 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %18 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @round_up_to_quad(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.kvec*, %struct.kvec** %4, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %43

27:                                               ; preds = %12
  %28 = load %struct.kvec*, %struct.kvec** %4, align 8
  %29 = getelementptr inbounds %struct.kvec, %struct.kvec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %32 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.kvec*, %struct.kvec** %4, align 8
  %35 = getelementptr inbounds %struct.kvec, %struct.kvec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.kvec*, %struct.kvec** %4, align 8
  %40 = getelementptr inbounds %struct.kvec, %struct.kvec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %27, %26, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @svc_getnl(%struct.kvec*) #1

declare dso_local i32 @round_up_to_quad(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
