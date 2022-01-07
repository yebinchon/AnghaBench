; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_snmp6_register_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_snmp6_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@snmp6_dev_seq_fops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp6_register_dev(%struct.inet6_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  %6 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %7 = icmp ne %struct.inet6_dev* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %8
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call %struct.net* @dev_net(%struct.TYPE_6__* %19)
  store %struct.net* %20, %struct.net** %5, align 8
  %21 = load %struct.net*, %struct.net** %5, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %16
  %30 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %31 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_IRUGO, align 4
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %41 = call %struct.proc_dir_entry* @proc_create_data(i32 %34, i32 %35, i32 %39, i32* @snmp6_dev_seq_fops, %struct.inet6_dev* %40)
  store %struct.proc_dir_entry* %41, %struct.proc_dir_entry** %4, align 8
  %42 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %43 = icmp ne %struct.proc_dir_entry* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %29
  %48 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %49 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %50 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store %struct.proc_dir_entry* %48, %struct.proc_dir_entry** %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %44, %26, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_6__*) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i32, i32, i32, i32*, %struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
