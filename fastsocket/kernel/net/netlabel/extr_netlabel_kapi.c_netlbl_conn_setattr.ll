; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_conn_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_conn_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.netlbl_domaddr4_map = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_conn_setattr(%struct.sock* %0, %struct.sockaddr* %1, %struct.netlbl_lsm_secattr* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.netlbl_lsm_secattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.netlbl_domaddr4_map*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.netlbl_lsm_secattr* %2, %struct.netlbl_lsm_secattr** %6, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %49 [
    i32 131, label %14
  ]

14:                                               ; preds = %3
  %15 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %8, align 8
  %17 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %18 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.netlbl_domaddr4_map* @netlbl_domhsh_getentry_af4(i32 %19, i32 %23)
  store %struct.netlbl_domaddr4_map* %24, %struct.netlbl_domaddr4_map** %9, align 8
  %25 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %9, align 8
  %26 = icmp eq %struct.netlbl_domaddr4_map* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %53

30:                                               ; preds = %14
  %31 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %9, align 8
  %32 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %45 [
    i32 129, label %34
    i32 128, label %42
  ]

34:                                               ; preds = %30
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %9, align 8
  %37 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %6, align 8
  %41 = call i32 @cipso_v4_sock_setattr(%struct.sock* %35, i32 %39, %struct.netlbl_lsm_secattr* %40)
  store i32 %41, i32* %7, align 4
  br label %48

42:                                               ; preds = %30
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call i32 @cipso_v4_sock_delattr(%struct.sock* %43)
  store i32 0, i32* %7, align 4
  br label %48

45:                                               ; preds = %30
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %42, %34
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EPROTONOSUPPORT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %48
  br label %53

53:                                               ; preds = %52, %27
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.netlbl_domaddr4_map* @netlbl_domhsh_getentry_af4(i32, i32) #1

declare dso_local i32 @cipso_v4_sock_setattr(%struct.sock*, i32, %struct.netlbl_lsm_secattr*) #1

declare dso_local i32 @cipso_v4_sock_delattr(%struct.sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
