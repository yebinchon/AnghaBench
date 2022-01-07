; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }
%struct.list = type { i8*, %struct.list* }

@obfd = common dso_local global %struct.TYPE_5__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: no open archive\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: can't find module file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar_extract(%struct.list* %0) #0 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.list* %0, %struct.list** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @obfd, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** @program_name, align 8
  %11 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %8, i8* %9, i8* %10)
  %12 = call i32 (...) @maybequit()
  br label %66

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %61, %13
  %15 = load %struct.list*, %struct.list** %2, align 8
  %16 = icmp ne %struct.list* %15, null
  br i1 %16, label %17, label %65

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @obfd, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %42, %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %46

30:                                               ; preds = %28
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.list*, %struct.list** %2, align 8
  %35 = getelementptr inbounds %struct.list, %struct.list* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @FILENAME_CMP(i32 %33, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = call i32 @extract_file(%struct.TYPE_4__* %40)
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %3, align 8
  br label %21

46:                                               ; preds = %28
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load %struct.list*, %struct.list** %2, align 8
  %51 = getelementptr inbounds %struct.list, %struct.list* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @bfd_openr(i8* %52, i32 0)
  %54 = load i32, i32* @stderr, align 4
  %55 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** @program_name, align 8
  %57 = load %struct.list*, %struct.list** %2, align 8
  %58 = getelementptr inbounds %struct.list, %struct.list* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %54, i8* %55, i8* %56, i8* %59)
  br label %61

61:                                               ; preds = %49, %46
  %62 = load %struct.list*, %struct.list** %2, align 8
  %63 = getelementptr inbounds %struct.list, %struct.list* %62, i32 0, i32 1
  %64 = load %struct.list*, %struct.list** %63, align 8
  store %struct.list* %64, %struct.list** %2, align 8
  br label %14

65:                                               ; preds = %14
  br label %66

66:                                               ; preds = %65, %7
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @maybequit(...) #1

declare dso_local i64 @FILENAME_CMP(i32, i8*) #1

declare dso_local i32 @extract_file(%struct.TYPE_4__*) #1

declare dso_local i32 @bfd_openr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
