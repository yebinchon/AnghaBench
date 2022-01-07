; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_handle_hup.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_handle_hup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.handle_hup.ed_hup = private unnamed_addr constant [7 x i8] c"ed.hup\00", align 1
@sigactive = common dso_local global i32 0, align 4
@sigflags = common dso_local global i32 0, align 4
@addr_last = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"ed.hup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_hup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [7 x i8], align 1
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %7 = bitcast [7 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.handle_hup.ed_hup, i32 0, i32 0), i64 7, i1 false)
  %8 = load i32, i32* @sigactive, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @quit(i32 1)
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 %13, 1
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @sigflags, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @sigflags, align 4
  %19 = load i64, i64* @addr_last, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %12
  %22 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %23 = load i64, i64* @addr_last, align 8
  %24 = call i64 @write_file(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i64 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %21
  %27 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %6, align 8
  %32 = add i64 %31, 8
  %33 = load i64, i64* @PATH_MAX, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 10
  %38 = call i64 @malloc(i64 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %3, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strcpy(i8* %42, i8* %43)
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 47
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load i8*, i8** %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 47, i8* %55, align 1
  %56 = load i8*, i8** %3, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %52, %41
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @strcat(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* @addr_last, align 8
  %65 = call i64 @write_file(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i64 %64)
  br label %66

66:                                               ; preds = %60, %35, %29, %26, %21, %12
  %67 = call i32 @quit(i32 2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @quit(i32) #2

declare dso_local i64 @write_file(i8*, i8*, i32, i64) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
