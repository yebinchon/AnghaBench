; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.netlbl_audit = type { i32 }
%struct.net_device = type { i32 }
%struct.netlbl_unlhsh_iface = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@netlbl_unlhsh_def = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@netlabel_mgmt_protocount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_unlhsh_remove(%struct.net* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.netlbl_audit* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlbl_audit*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.netlbl_unlhsh_iface*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.netlbl_audit* %5, %struct.netlbl_audit** %13, align 8
  %17 = load i32, i32* %12, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %79

27:                                               ; preds = %20, %6
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load %struct.net*, %struct.net** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call %struct.net_device* @dev_get_by_name(%struct.net* %32, i8* %33)
  store %struct.net_device* %34, %struct.net_device** %15, align 8
  %35 = load %struct.net_device*, %struct.net_device** %15, align 8
  %36 = icmp eq %struct.net_device* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %14, align 4
  br label %76

40:                                               ; preds = %31
  %41 = load %struct.net_device*, %struct.net_device** %15, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_search_iface(i32 %43)
  store %struct.netlbl_unlhsh_iface* %44, %struct.netlbl_unlhsh_iface** %16, align 8
  %45 = load %struct.net_device*, %struct.net_device** %15, align 8
  %46 = call i32 @dev_put(%struct.net_device* %45)
  br label %50

47:                                               ; preds = %27
  %48 = load i32, i32* @netlbl_unlhsh_def, align 4
  %49 = call %struct.netlbl_unlhsh_iface* @rcu_dereference(i32 %48)
  store %struct.netlbl_unlhsh_iface* %49, %struct.netlbl_unlhsh_iface** %16, align 8
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %16, align 8
  %52 = icmp eq %struct.netlbl_unlhsh_iface* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %14, align 4
  br label %76

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  switch i32 %57, label %65 [
    i32 4, label %58
  ]

58:                                               ; preds = %56
  %59 = load %struct.net*, %struct.net** %8, align 8
  %60 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %16, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.netlbl_audit*, %struct.netlbl_audit** %13, align 8
  %64 = call i32 @netlbl_unlhsh_remove_addr4(%struct.net* %59, %struct.netlbl_unlhsh_iface* %60, i8* %61, i8* %62, %struct.netlbl_audit* %63)
  store i32 %64, i32* %14, align 4
  br label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %16, align 8
  %73 = call i32 @netlbl_unlhsh_condremove_iface(%struct.netlbl_unlhsh_iface* %72)
  %74 = call i32 @atomic_dec(i32* @netlabel_mgmt_protocount)
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75, %53, %37
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %24
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_name(%struct.net*, i8*) #1

declare dso_local %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_search_iface(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local %struct.netlbl_unlhsh_iface* @rcu_dereference(i32) #1

declare dso_local i32 @netlbl_unlhsh_remove_addr4(%struct.net*, %struct.netlbl_unlhsh_iface*, i8*, i8*, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_unlhsh_condremove_iface(%struct.netlbl_unlhsh_iface*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
