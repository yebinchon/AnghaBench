; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_skip_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_skip_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ainfo = type { i32, i32, i32 }

@lineno = common dso_local global i32 0, align 4
@cptr = common dso_local global i8* null, align 8
@line = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skip_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_comment() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.ainfo, align 4
  %3 = load i32, i32* @lineno, align 4
  %4 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %2, i32 0, i32 2
  store i32 %3, i32* %4, align 4
  %5 = call i32 (...) @dup_line()
  %6 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %2, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = load i8*, i8** @cptr, align 8
  %11 = load i8*, i8** @line, align 8
  %12 = ptrtoint i8* %10 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = add nsw i64 %9, %14
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %2, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i8*, i8** @cptr, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8* %19, i8** %1, align 8
  br label %20

20:                                               ; preds = %53, %0
  %21 = load i8*, i8** %1, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 42
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i8*, i8** %1, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** @cptr, align 8
  %34 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @FREE(i32 %35)
  ret void

37:                                               ; preds = %25, %20
  %38 = load i8*, i8** %1, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = call i32 (...) @get_line()
  %44 = load i8*, i8** @line, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @unterminated_comment(%struct.ainfo* %2)
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i8*, i8** @cptr, align 8
  store i8* %49, i8** %1, align 8
  br label %53

50:                                               ; preds = %37
  %51 = load i8*, i8** %1, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %1, align 8
  br label %53

53:                                               ; preds = %50, %48
  br label %20
}

declare dso_local i32 @dup_line(...) #1

declare dso_local i32 @FREE(i32) #1

declare dso_local i32 @get_line(...) #1

declare dso_local i32 @unterminated_comment(%struct.ainfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
