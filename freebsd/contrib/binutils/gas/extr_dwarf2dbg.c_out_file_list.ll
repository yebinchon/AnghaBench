; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_file_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_file_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@dirs_in_use = common dso_local global i32 0, align 4
@dirs = common dso_local global i8** null, align 8
@files_in_use = common dso_local global i32 0, align 4
@files = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"unassigned file number %ld\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @out_file_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_file_list() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @dirs_in_use, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load i8**, i8*** @dirs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = call i8* @frag_more(i64 %17)
  store i8* %18, i8** %2, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = load i8**, i8*** @dirs, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @memcpy(i8* %19, i8* %24, i64 %25)
  br label %27

27:                                               ; preds = %8
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %4

30:                                               ; preds = %4
  %31 = call i32 @out_byte(i8 signext 0)
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %84, %30
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @files_in_use, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %87

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = call i32 @as_bad(i32 %45, i64 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  br label %84

54:                                               ; preds = %36
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %1, align 8
  %64 = load i64, i64* %1, align 8
  %65 = call i8* @frag_more(i64 %64)
  store i8* %65, i8** %2, align 8
  %66 = load i8*, i8** %2, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %1, align 8
  %74 = call i32 @memcpy(i8* %66, i8* %72, i64 %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %76 = load i32, i32* %3, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @out_uleb128(i32 %80)
  %82 = call i32 @out_uleb128(i32 0)
  %83 = call i32 @out_uleb128(i32 0)
  br label %84

84:                                               ; preds = %54, %44
  %85 = load i32, i32* %3, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %32

87:                                               ; preds = %32
  %88 = call i32 @out_byte(i8 signext 0)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @frag_more(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @out_byte(i8 signext) #1

declare dso_local i32 @as_bad(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @out_uleb128(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
