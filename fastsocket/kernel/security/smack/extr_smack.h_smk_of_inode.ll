; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack.h_smk_of_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack.h_smk_of_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.inode_smack* }
%struct.inode_smack = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.inode*)* @smk_of_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @smk_of_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.inode_smack*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 0
  %6 = load %struct.inode_smack*, %struct.inode_smack** %5, align 8
  store %struct.inode_smack* %6, %struct.inode_smack** %3, align 8
  %7 = load %struct.inode_smack*, %struct.inode_smack** %3, align 8
  %8 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  ret i8* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
