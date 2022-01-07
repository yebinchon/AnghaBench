; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_insert_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_insert_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i8* }

@user_args = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Missing argument %d in user function.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @insert_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @insert_args(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @locate_arg(i8* %13)
  store i8* %14, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 48
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @user_args, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %16
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i8* null, i8** %2, align 8
  br label %129

39:                                               ; preds = %16
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @user_args, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 5
  store i8* %51, i8** %3, align 8
  br label %12

52:                                               ; preds = %12
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  %61 = call i64 @xmalloc(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i8* null, i8** %2, align 8
  br label %129

66:                                               ; preds = %52
  %67 = load i8*, i8** %5, align 8
  store i8* %67, i8** %3, align 8
  %68 = load i8*, i8** %6, align 8
  store i8* %68, i8** %5, align 8
  br label %69

69:                                               ; preds = %121, %66
  %70 = load i8*, i8** %3, align 8
  %71 = call i8* @locate_arg(i8* %70)
  store i8* %71, i8** %4, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %124

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(i8* %74, i8* %75, i32 %81)
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = sub nsw i32 %93, 48
  store i32 %94, i32* %9, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @user_args, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %73
  %106 = load i8*, i8** %6, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @user_args, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @memcpy(i8* %106, i8* %114, i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %6, align 8
  br label %121

121:                                              ; preds = %105, %73
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 5
  store i8* %123, i8** %3, align 8
  br label %69

124:                                              ; preds = %69
  %125 = load i8*, i8** %6, align 8
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @strcpy(i8* %125, i8* %126)
  %128 = load i8*, i8** %5, align 8
  store i8* %128, i8** %2, align 8
  br label %129

129:                                              ; preds = %124, %65, %36
  %130 = load i8*, i8** %2, align 8
  ret i8* %130
}

declare dso_local i8* @locate_arg(i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
