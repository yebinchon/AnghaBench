; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_put_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_put_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"--> nfs_put_client({%d})\0A\00", align 1
@nfs_client_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_put_client(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %3 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %4 = icmp ne %struct.nfs_client* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %7, i32 0, i32 2
  %9 = call i32 @atomic_read(i32* %8)
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %12 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %11, i32 0, i32 2
  %13 = call i64 @atomic_dec_and_lock(i32* %12, i32* @nfs_client_lock)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %6
  %16 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %20 = call i32 @nfs_cb_idr_remove_locked(%struct.nfs_client* %19)
  %21 = call i32 @spin_unlock(i32* @nfs_client_lock)
  %22 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %23 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %22, i32 0, i32 0
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %30 = call i32 @nfs_free_client(%struct.nfs_client* %29)
  br label %31

31:                                               ; preds = %5, %15, %6
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @nfs_cb_idr_remove_locked(%struct.nfs_client*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @nfs_free_client(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
