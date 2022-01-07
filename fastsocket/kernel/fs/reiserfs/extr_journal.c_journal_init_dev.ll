; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_init_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i32, i32 }
%struct.reiserfs_journal = type { i32*, i8* }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sh-458\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot init journal device '%s': %i\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"journal_init_dev: Cannot open '%s': %i\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"journal_init_dev: journal device: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal*, i8*)* @journal_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_init_dev(%struct.super_block* %0, %struct.reiserfs_journal* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_journal*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.reiserfs_journal* %1, %struct.reiserfs_journal** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @FMODE_READ, align 4
  %15 = load i32, i32* @FMODE_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %10, align 8
  %19 = load i32, i32* @BDEVNAME_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %24 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = call i64 @SB_ONDISK_JOURNAL_DEVICE(%struct.super_block* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call i64 @SB_ONDISK_JOURNAL_DEVICE(%struct.super_block* %29)
  %31 = call i64 @new_decode_dev(i64 %30)
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i64 [ %31, %28 ], [ %35, %32 ]
  store i64 %37, i64* %9, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @bdev_read_only(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @FMODE_READ, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %10, align 8
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %113, label %55

55:                                               ; preds = %50, %47
  %56 = load i64, i64* %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32* @open_by_devnum(i64 %56, i8* %57)
  %59 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %60 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %63 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %65 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @IS_ERR(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %55
  %70 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %71 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @PTR_ERR(i32* %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %75 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @__bdevname(i64 %77, i8* %22)
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (%struct.super_block*, i8*, i8*, i32, ...) @reiserfs_warning(%struct.super_block* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %154

82:                                               ; preds = %55
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %82
  %89 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %90 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %93 = call i32 @bd_claim(i32* %91, %struct.reiserfs_journal* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %98 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @blkdev_put(i32* %99, i8* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %154

103:                                              ; preds = %88
  %104 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %105 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.super_block*, %struct.super_block** %5, align 8
  %108 = getelementptr inbounds %struct.super_block, %struct.super_block* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @set_blocksize(i32* %106, i32 %109)
  br label %111

111:                                              ; preds = %103, %82
  br label %112

112:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %154

113:                                              ; preds = %50
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %116 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %120 = call i32* @open_bdev_exclusive(i8* %117, i8* %118, %struct.reiserfs_journal* %119)
  %121 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %122 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %121, i32 0, i32 0
  store i32* %120, i32** %122, align 8
  %123 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %124 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i64 @IS_ERR(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %113
  %129 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %130 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @PTR_ERR(i32* %131)
  store i32 %132, i32* %8, align 4
  %133 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %134 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %133, i32 0, i32 0
  store i32* null, i32** %134, align 8
  %135 = load %struct.super_block*, %struct.super_block** %5, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (%struct.super_block*, i8*, i8*, i32, ...) @reiserfs_warning(%struct.super_block* %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %136, i32 %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %154

140:                                              ; preds = %113
  %141 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %142 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.super_block*, %struct.super_block** %5, align 8
  %145 = getelementptr inbounds %struct.super_block, %struct.super_block* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @set_blocksize(i32* %143, i32 %146)
  %148 = load %struct.super_block*, %struct.super_block** %5, align 8
  %149 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %150 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @bdevname(i32* %151, i8* %22)
  %153 = call i32 @reiserfs_info(%struct.super_block* %148, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %154

154:                                              ; preds = %140, %128, %112, %96, %69
  %155 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SB_ONDISK_JOURNAL_DEVICE(%struct.super_block*) #2

declare dso_local i64 @new_decode_dev(i64) #2

declare dso_local i64 @bdev_read_only(i32) #2

declare dso_local i32* @open_by_devnum(i64, i8*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i32, ...) #2

declare dso_local i32 @__bdevname(i64, i8*) #2

declare dso_local i32 @bd_claim(i32*, %struct.reiserfs_journal*) #2

declare dso_local i32 @blkdev_put(i32*, i8*) #2

declare dso_local i32 @set_blocksize(i32*, i32) #2

declare dso_local i32* @open_bdev_exclusive(i8*, i8*, %struct.reiserfs_journal*) #2

declare dso_local i32 @reiserfs_info(%struct.super_block*, i8*, i32) #2

declare dso_local i32 @bdevname(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
