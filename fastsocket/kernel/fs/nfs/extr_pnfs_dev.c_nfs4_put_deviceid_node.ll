; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs_dev.c_nfs4_put_deviceid_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs_dev.c_nfs4_put_deviceid_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_put_deviceid_node(%struct.nfs4_deviceid_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_deviceid_node*, align 8
  store %struct.nfs4_deviceid_node* %0, %struct.nfs4_deviceid_node** %3, align 8
  %4 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %5 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %4, i32 0, i32 1
  %6 = call i32 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %11 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.nfs4_deviceid_node*)**
  %15 = load i32 (%struct.nfs4_deviceid_node*)*, i32 (%struct.nfs4_deviceid_node*)** %14, align 8
  %16 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %3, align 8
  %17 = call i32 %15(%struct.nfs4_deviceid_node* %16)
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %9, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
