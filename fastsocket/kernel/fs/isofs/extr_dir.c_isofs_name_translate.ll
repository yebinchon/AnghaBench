; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_dir.c_isofs_name_translate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_dir.c_isofs_name_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i8*, i32* }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isofs_name_translate(%struct.iso_directory_record* %0, i8* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.iso_directory_record*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.iso_directory_record* %0, %struct.iso_directory_record** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %11 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %12 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %15 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %107, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %110

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %10, align 1
  %29 = load i8, i8* %10, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %110

32:                                               ; preds = %23
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sge i32 %34, 65
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sle i32 %38, 90
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, 32
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %10, align 1
  br label %45

45:                                               ; preds = %40, %36, %32
  %46 = load i8, i8* %10, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 3
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 59
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 49
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %110

73:                                               ; preds = %63, %54, %49, %45
  %74 = load i8, i8* %10, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 59
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 2
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 49
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %110

92:                                               ; preds = %82, %77, %73
  %93 = load i8, i8* %10, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 59
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i8, i8* %10, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 47
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %92
  store i8 46, i8* %10, align 1
  br label %101

101:                                              ; preds = %100, %96
  %102 = load i8, i8* %10, align 1
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %102, i8* %106, align 1
  br label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %19

110:                                              ; preds = %91, %72, %31, %19
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
