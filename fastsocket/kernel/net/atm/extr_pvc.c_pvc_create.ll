; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pvc.c_pvc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_pvc.c_pvc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32* }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@pvc_proto_ops = common dso_local global i32 0, align 4
@PF_ATMPVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @pvc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvc_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.net*, %struct.net** %6, align 8
  %11 = icmp ne %struct.net* %10, @init_net
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* @EAFNOSUPPORT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %23

15:                                               ; preds = %4
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  store i32* @pvc_proto_ops, i32** %17, align 8
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PF_ATMPVC, align 4
  %22 = call i32 @vcc_create(%struct.net* %18, %struct.socket* %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %15, %12
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @vcc_create(%struct.net*, %struct.socket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
