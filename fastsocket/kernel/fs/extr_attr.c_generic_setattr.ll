; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_attr.c_generic_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_attr.c_generic_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iattr = type { i32, i32, i32, i32, i32, i32, i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@CAP_FSETID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_setattr(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %7 = load %struct.iattr*, %struct.iattr** %4, align 8
  %8 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ATTR_UID, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.iattr*, %struct.iattr** %4, align 8
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ATTR_GID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.iattr*, %struct.iattr** %4, align 8
  %27 = getelementptr inbounds %struct.iattr, %struct.iattr* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ATTR_ATIME, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.iattr*, %struct.iattr** %4, align 8
  %38 = getelementptr inbounds %struct.iattr, %struct.iattr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @timespec_trunc(i32 %39, i32 %44)
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %36, %31
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ATTR_MTIME, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.iattr*, %struct.iattr** %4, align 8
  %55 = getelementptr inbounds %struct.iattr, %struct.iattr* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @timespec_trunc(i32 %56, i32 %61)
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %53, %48
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @ATTR_CTIME, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.iattr*, %struct.iattr** %4, align 8
  %72 = getelementptr inbounds %struct.iattr, %struct.iattr* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @timespec_trunc(i32 %73, i32 %78)
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %70, %65
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @ATTR_MODE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %82
  %88 = load %struct.iattr*, %struct.iattr** %4, align 8
  %89 = getelementptr inbounds %struct.iattr, %struct.iattr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %6, align 4
  %91 = load %struct.inode*, %struct.inode** %3, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @in_group_p(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* @CAP_FSETID, align 4
  %98 = call i32 @capable(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @S_ISGID, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %100, %96, %87
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.inode*, %struct.inode** %3, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %82
  ret void
}

declare dso_local i8* @timespec_trunc(i32, i32) #1

declare dso_local i32 @in_group_p(i32) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
