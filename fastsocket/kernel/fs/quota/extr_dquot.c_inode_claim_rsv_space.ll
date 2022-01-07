; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_inode_claim_rsv_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_inode_claim_rsv_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inode_claim_rsv_space(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i32* @inode_reserved_space(%struct.inode* %9)
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = sub nsw i64 %12, %8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @__inode_add_bytes(%struct.inode* %15, i64 %16)
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @inode_reserved_space(%struct.inode*) #1

declare dso_local i32 @__inode_add_bytes(%struct.inode*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
