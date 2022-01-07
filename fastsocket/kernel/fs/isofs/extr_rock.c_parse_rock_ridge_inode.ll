; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_rock.c_parse_rock_ridge_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_rock.c_parse_rock_ridge_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_rock_ridge_inode(%struct.iso_directory_record* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.iso_directory_record*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.iso_directory_record* %0, %struct.iso_directory_record** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.iso_directory_record*, %struct.iso_directory_record** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call i32 @parse_rock_ridge_inode_internal(%struct.iso_directory_record* %6, %struct.inode* %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @ISOFS_SB(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_2__* @ISOFS_SB(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.iso_directory_record*, %struct.iso_directory_record** %3, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i32 @parse_rock_ridge_inode_internal(%struct.iso_directory_record* %25, %struct.inode* %26, i32 14)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %16, %2
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @parse_rock_ridge_inode_internal(%struct.iso_directory_record*, %struct.inode*, i32) #1

declare dso_local %struct.TYPE_2__* @ISOFS_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
