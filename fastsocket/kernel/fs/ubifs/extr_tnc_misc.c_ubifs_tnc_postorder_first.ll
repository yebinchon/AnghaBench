; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_postorder_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_postorder_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_znode* @ubifs_tnc_postorder_first(%struct.ubifs_znode* %0) #0 {
  %2 = alloca %struct.ubifs_znode*, align 8
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_znode* %0, %struct.ubifs_znode** %3, align 8
  %5 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %6 = icmp ne %struct.ubifs_znode* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %2, align 8
  br label %29

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %25, %12
  %14 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %20 = call %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode* %19, i32 0)
  store %struct.ubifs_znode* %20, %struct.ubifs_znode** %4, align 8
  %21 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %22 = icmp ne %struct.ubifs_znode* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  store %struct.ubifs_znode* %24, %struct.ubifs_znode** %2, align 8
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  store %struct.ubifs_znode* %26, %struct.ubifs_znode** %3, align 8
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  store %struct.ubifs_znode* %28, %struct.ubifs_znode** %2, align 8
  br label %29

29:                                               ; preds = %27, %23, %11
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %2, align 8
  ret %struct.ubifs_znode* %30
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
