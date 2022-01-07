; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_postorder_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_postorder_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { %struct.ubifs_znode*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_next(%struct.ubifs_znode* %0) #0 {
  %2 = alloca %struct.ubifs_znode*, align 8
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_znode* %0, %struct.ubifs_znode** %3, align 8
  %5 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %6 = call i32 @ubifs_assert(%struct.ubifs_znode* %5)
  %7 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %7, i32 0, i32 0
  %9 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %10 = icmp ne %struct.ubifs_znode* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %2, align 8
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %18 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %17, i32 0, i32 0
  %19 = load %struct.ubifs_znode*, %struct.ubifs_znode** %18, align 8
  %20 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = call %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode* %19, i64 %23)
  store %struct.ubifs_znode* %24, %struct.ubifs_znode** %4, align 8
  %25 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %26 = icmp ne %struct.ubifs_znode* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %16
  %28 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %28, i32 0, i32 0
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %29, align 8
  store %struct.ubifs_znode* %30, %struct.ubifs_znode** %2, align 8
  br label %34

31:                                               ; preds = %16
  %32 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %33 = call %struct.ubifs_znode* @ubifs_tnc_postorder_first(%struct.ubifs_znode* %32)
  store %struct.ubifs_znode* %33, %struct.ubifs_znode** %2, align 8
  br label %34

34:                                               ; preds = %31, %27, %15
  %35 = load %struct.ubifs_znode*, %struct.ubifs_znode** %2, align 8
  ret %struct.ubifs_znode* %35
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_znode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode*, i64) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_first(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
