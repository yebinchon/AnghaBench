; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_joliet.c_get_joliet_filename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_joliet.c_get_joliet_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i32*, i64 }
%struct.inode = type { i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_2__ = type { i8, %struct.nls_table* }

@UTF16_BIG_ENDIAN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_joliet_filename(%struct.iso_directory_record* %0, i8* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.iso_directory_record*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i8, align 1
  store %struct.iso_directory_record* %0, %struct.iso_directory_record** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  store i8 0, i8* %9, align 1
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_2__* @ISOFS_SB(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  store i8 %15, i8* %7, align 1
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_2__* @ISOFS_SB(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.nls_table*, %struct.nls_table** %20, align 8
  store %struct.nls_table* %21, %struct.nls_table** %8, align 8
  %22 = load i8, i8* %7, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %26 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %30 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 1
  %35 = load i32, i32* @UTF16_BIG_ENDIAN, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call zeroext i8 @utf16s_to_utf8s(i32* %28, i32 %34, i32 %35, i8* %36, i32 %37)
  store i8 %38, i8* %9, align 1
  br label %53

39:                                               ; preds = %3
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %42 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %46 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 1
  %51 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %52 = call zeroext i8 @uni16_to_x8(i8* %40, i32* %44, i32 %50, %struct.nls_table* %51)
  store i8 %52, i8* %9, align 1
  br label %53

53:                                               ; preds = %39, %24
  %54 = load i8, i8* %9, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 59
  br i1 %66, label %67, label %82

67:                                               ; preds = %57
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 49
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i8, i8* %9, align 1
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %79, 2
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %9, align 1
  br label %82

82:                                               ; preds = %77, %67, %57, %53
  br label %83

83:                                               ; preds = %99, %82
  %84 = load i8, i8* %9, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sge i32 %85, 2
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %9, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 46
  br label %97

97:                                               ; preds = %87, %83
  %98 = phi i1 [ false, %83 ], [ %96, %87 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i8, i8* %9, align 1
  %101 = add i8 %100, -1
  store i8 %101, i8* %9, align 1
  br label %83

102:                                              ; preds = %97
  %103 = load i8, i8* %9, align 1
  %104 = zext i8 %103 to i32
  ret i32 %104
}

declare dso_local %struct.TYPE_2__* @ISOFS_SB(i32) #1

declare dso_local zeroext i8 @utf16s_to_utf8s(i32*, i32, i32, i8*, i32) #1

declare dso_local zeroext i8 @uni16_to_x8(i8*, i32*, i32, %struct.nls_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
