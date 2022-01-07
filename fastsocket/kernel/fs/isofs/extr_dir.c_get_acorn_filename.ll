; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_dir.c_get_acorn_filename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_dir.c_get_acorn_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i32*, i32* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ARCHIMEDES\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%3.3x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_acorn_filename(%struct.iso_directory_record* %0, i8* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iso_directory_record*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.iso_directory_record* %0, %struct.iso_directory_record** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %11 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = call i32 @isofs_name_translate(%struct.iso_directory_record* %11, i8* %12, %struct.inode* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %116

18:                                               ; preds = %3
  %19 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %20 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 16, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %35 = bitcast %struct.iso_directory_record* %34 to i8*
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp ne i32 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %116

43:                                               ; preds = %33
  %44 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %45 = bitcast %struct.iso_directory_record* %44 to i8*
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %116

54:                                               ; preds = %43
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 95
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 19
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i8*, i8** %6, align 8
  store i8 33, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %59, %54
  %69 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %70 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %68
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 13
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 255
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 12
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 240
  %88 = icmp eq i32 %87, 240
  br i1 %88, label %89, label %114

89:                                               ; preds = %82
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 44, i8* %93, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 12
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 15
  %104 = shl i32 %103, 8
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 11
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %104, %108
  %110 = trunc i32 %109 to i8
  %111 = call i32 @sprintf(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %110)
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 4
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %89, %82, %76, %68
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %52, %41, %17
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @isofs_name_translate(%struct.iso_directory_record*, i8*, %struct.inode*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
