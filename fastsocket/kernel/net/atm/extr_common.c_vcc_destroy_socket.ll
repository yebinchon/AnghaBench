; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_vcc_destroy_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_vcc_destroy_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.atm_vcc = type { %struct.TYPE_4__*, i32 (%struct.atm_vcc*, i32*)*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.atm_vcc*)* }
%struct.sk_buff = type { i32 }

@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @vcc_destroy_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_destroy_socket(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.atm_vcc* @atm_sk(%struct.sock* %5)
  store %struct.atm_vcc* %6, %struct.atm_vcc** %3, align 8
  %7 = load i32, i32* @ATM_VF_CLOSE, align 4
  %8 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %9 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %8, i32 0, i32 2
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load i32, i32* @ATM_VF_READY, align 4
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %13 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %12, i32 0, i32 2
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %16 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %76

19:                                               ; preds = %1
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %21 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32 (%struct.atm_vcc*)*, i32 (%struct.atm_vcc*)** %25, align 8
  %27 = icmp ne i32 (%struct.atm_vcc*)* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %30 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32 (%struct.atm_vcc*)*, i32 (%struct.atm_vcc*)** %34, align 8
  %36 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %37 = call i32 %35(%struct.atm_vcc* %36)
  br label %38

38:                                               ; preds = %28, %19
  %39 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %40 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %39, i32 0, i32 1
  %41 = load i32 (%struct.atm_vcc*, i32*)*, i32 (%struct.atm_vcc*, i32*)** %40, align 8
  %42 = icmp ne i32 (%struct.atm_vcc*, i32*)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %45 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %44, i32 0, i32 1
  %46 = load i32 (%struct.atm_vcc*, i32*)*, i32 (%struct.atm_vcc*, i32*)** %45, align 8
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %48 = call i32 %46(%struct.atm_vcc* %47, i32* null)
  br label %49

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %55, %49
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = call %struct.sk_buff* @skb_dequeue(i32* %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %4, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @atm_return(%struct.atm_vcc* %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  br label %50

63:                                               ; preds = %50
  %64 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %65 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @module_put(i32 %70)
  %72 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %73 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @atm_dev_put(%struct.TYPE_4__* %74)
  br label %76

76:                                               ; preds = %63, %1
  %77 = load %struct.sock*, %struct.sock** %2, align 8
  %78 = call i32 @vcc_remove_socket(%struct.sock* %77)
  ret void
}

declare dso_local %struct.atm_vcc* @atm_sk(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @atm_dev_put(%struct.TYPE_4__*) #1

declare dso_local i32 @vcc_remove_socket(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
