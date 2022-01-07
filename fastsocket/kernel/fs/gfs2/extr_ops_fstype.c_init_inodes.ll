; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i8*, i8*, i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"statfs\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"can't read in statfs inode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rindex\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"can't get resource index inode: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"quota\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"can't get quota file inode: %d\0A\00", align 1
@UNDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @init_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_inodes(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %86

16:                                               ; preds = %2
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @init_journal(%struct.gfs2_sbd* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %107

23:                                               ; preds = %16
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i8* @gfs2_lookup_simple(%struct.inode* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @fs_err(%struct.gfs2_sbd* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %103

41:                                               ; preds = %23
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call i8* @gfs2_lookup_simple(%struct.inode* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %47 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %53 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @fs_err(%struct.gfs2_sbd* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %98

59:                                               ; preds = %41
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %61 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i8* @gfs2_lookup_simple(%struct.inode* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %65 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %67 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %59
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %73 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @fs_err(%struct.gfs2_sbd* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  br label %91

79:                                               ; preds = %59
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %81 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %86

85:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %109

86:                                               ; preds = %84, %15
  %87 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %88 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @iput(i8* %89)
  br label %91

91:                                               ; preds = %86, %71
  %92 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %93 = call i32 @gfs2_clear_rgrpd(%struct.gfs2_sbd* %92)
  %94 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %95 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @iput(i8* %96)
  br label %98

98:                                               ; preds = %91, %51
  %99 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %100 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @iput(i8* %101)
  br label %103

103:                                              ; preds = %98, %33
  %104 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %105 = load i32, i32* @UNDO, align 4
  %106 = call i32 @init_journal(%struct.gfs2_sbd* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %22
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %85
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @init_journal(%struct.gfs2_sbd*, i32) #1

declare dso_local i8* @gfs2_lookup_simple(%struct.inode*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @iput(i8*) #1

declare dso_local i32 @gfs2_clear_rgrpd(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
