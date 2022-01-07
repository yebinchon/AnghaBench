; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_init_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.fuse_attr = type { i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.fuse_attr*)* @fuse_init_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_init_inode(%struct.inode* %0, %struct.fuse_attr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fuse_attr*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.fuse_attr* %1, %struct.fuse_attr** %4, align 8
  %5 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %6 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @S_IFMT, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %13 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @S_ISREG(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @fuse_init_common(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call i32 @fuse_init_file_inode(%struct.inode* %25)
  br label %86

27:                                               ; preds = %2
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @S_ISDIR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call i32 @fuse_init_dir(%struct.inode* %34)
  br label %85

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @S_ISLNK(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call i32 @fuse_init_symlink(%struct.inode* %43)
  br label %84

45:                                               ; preds = %36
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @S_ISCHR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISBLK(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @S_ISFIFO(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISSOCK(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %63, %57, %51, %45
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = call i32 @fuse_init_common(%struct.inode* %70)
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fuse_attr*, %struct.fuse_attr** %4, align 8
  %77 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @new_decode_dev(i32 %78)
  %80 = call i32 @init_special_inode(%struct.inode* %72, i32 %75, i32 %79)
  br label %83

81:                                               ; preds = %63
  %82 = call i32 (...) @BUG()
  br label %83

83:                                               ; preds = %81, %69
  br label %84

84:                                               ; preds = %83, %42
  br label %85

85:                                               ; preds = %84, %33
  br label %86

86:                                               ; preds = %85, %22
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @fuse_init_common(%struct.inode*) #1

declare dso_local i32 @fuse_init_file_inode(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @fuse_init_dir(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @fuse_init_symlink(%struct.inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
