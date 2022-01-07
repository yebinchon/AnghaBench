; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_chk_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_chk_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@pids = common dso_local global i64 0, align 8
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@FILEBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chk_path(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  store i32 -1, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %15, %3
  br label %19

19:                                               ; preds = %82, %30, %18
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 47)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %85

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @lstat(i8* %27, %struct.stat* %8)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  store i8 47, i8* %31, align 1
  br label %19

33:                                               ; preds = %25
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @S_IRWXU, align 4
  %36 = load i32, i32* @S_IRWXG, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @S_IRWXO, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @mkdir(i8* %34, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i8*, i8** %7, align 8
  store i8 47, i8* %43, align 1
  store i32 -1, i32* %9, align 4
  br label %85

44:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  %45 = load i64, i64* @pids, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @set_ids(i8* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @R_OK, align 4
  %55 = load i32, i32* @W_OK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @X_OK, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @access(i8* %53, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %52
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 @lstat(i8* %62, %struct.stat* %8)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FILEBITS, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @S_IRWXU, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @set_pmode(i8* %66, i32 %72)
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @add_dir(i8* %74, i32 %80, %struct.stat* %8, i32 1)
  br label %82

82:                                               ; preds = %65, %61, %52
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  store i8 47, i8* %83, align 1
  br label %19

85:                                               ; preds = %42, %24
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @set_ids(i8*, i32, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @set_pmode(i8*, i32) #1

declare dso_local i32 @add_dir(i8*, i32, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
