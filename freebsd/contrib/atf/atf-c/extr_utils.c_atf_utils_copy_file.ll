; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_copy_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_utils.c_atf_utils_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to open source file during copy (%s)\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to open destination file during copy (%s)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to write to %s during copy\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to read from %s during copy\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to stat source file %s during copy\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to chmod destination file %s during copy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atf_utils_copy_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 (i8*, i32, ...) @open(i8* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @ATF_REQUIRE_MSG(i32 %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @O_WRONLY, align 4
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_TRUNC, align 4
  %23 = or i32 %21, %22
  %24 = call i32 (i8*, i32, ...) @open(i8* %18, i32 %23, i32 511)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @ATF_REQUIRE_MSG(i32 %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %35, %2
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %33 = call i32 @read(i32 %31, i8* %32, i32 1024)
  store i32 %33, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @write(i32 %36, i8* %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @ATF_REQUIRE_MSG(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %30

45:                                               ; preds = %30
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @ATF_REQUIRE_MSG(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @fstat(i32 %51, %struct.stat* %9)
  %53 = icmp ne i32 %52, -1
  %54 = zext i1 %53 to i32
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @ATF_REQUIRE_MSG(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fchmod(i32 %57, i32 %59)
  %61 = icmp ne i32 %60, -1
  %62 = zext i1 %61 to i32
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @ATF_REQUIRE_MSG(i32 %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @close(i32 %67)
  ret void
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fchmod(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
