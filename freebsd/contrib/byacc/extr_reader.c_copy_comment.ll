; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_copy_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_copy_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mstring = type { i32 }
%struct.ainfo = type { i32, i32, i32 }

@cptr = common dso_local global i8* null, align 8
@lineno = common dso_local global i32 0, align 4
@line = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @copy_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @copy_comment() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.mstring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ainfo, align 4
  %5 = call %struct.mstring* (...) @msnew()
  store %struct.mstring* %5, %struct.mstring** %2, align 8
  %6 = load i8*, i8** @cptr, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 47
  br i1 %10, label %11, label %42

11:                                               ; preds = %0
  %12 = load %struct.mstring*, %struct.mstring** %2, align 8
  %13 = call i32 @mputc(%struct.mstring* %12, i8 signext 42)
  br label %14

14:                                               ; preds = %36, %11
  %15 = load i8*, i8** @cptr, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** @cptr, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = icmp ne i32 %18, 10
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.mstring*, %struct.mstring** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = trunc i32 %22 to i8
  %24 = call i32 @mputc(%struct.mstring* %21, i8 signext %23)
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 42
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i8*, i8** @cptr, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.mstring*, %struct.mstring** %2, align 8
  %35 = call i32 @mputc(%struct.mstring* %34, i8 signext 32)
  br label %36

36:                                               ; preds = %33, %27, %20
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.mstring*, %struct.mstring** %2, align 8
  %39 = call i32 @mputc(%struct.mstring* %38, i8 signext 42)
  %40 = load %struct.mstring*, %struct.mstring** %2, align 8
  %41 = call i32 @mputc(%struct.mstring* %40, i8 signext 47)
  br label %106

42:                                               ; preds = %0
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 42
  br i1 %44, label %45, label %105

45:                                               ; preds = %42
  %46 = load i32, i32* @lineno, align 4
  %47 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = call i32 (...) @dup_line()
  %49 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load i8*, i8** @cptr, align 8
  %54 = load i8*, i8** @line, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sub nsw i64 %57, 1
  %59 = add nsw i64 %52, %58
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.mstring*, %struct.mstring** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = trunc i32 %63 to i8
  %65 = call i32 @mputc(%struct.mstring* %62, i8 signext %64)
  %66 = load i8*, i8** @cptr, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** @cptr, align 8
  br label %68

68:                                               ; preds = %104, %45
  %69 = load i8*, i8** @cptr, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** @cptr, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  store i32 %72, i32* %3, align 4
  %73 = load %struct.mstring*, %struct.mstring** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = trunc i32 %74 to i8
  %76 = call i32 @mputc(%struct.mstring* %73, i8 signext %75)
  %77 = load i32, i32* %3, align 4
  %78 = icmp eq i32 %77, 42
  br i1 %78, label %79, label %94

79:                                               ; preds = %68
  %80 = load i8*, i8** @cptr, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.mstring*, %struct.mstring** %2, align 8
  %86 = call i32 @mputc(%struct.mstring* %85, i8 signext 47)
  %87 = load i8*, i8** @cptr, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** @cptr, align 8
  %89 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @FREE(i32 %90)
  %92 = load %struct.mstring*, %struct.mstring** %2, align 8
  %93 = call i8* @msdone(%struct.mstring* %92)
  store i8* %93, i8** %1, align 8
  br label %109

94:                                               ; preds = %79, %68
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 %95, 10
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = call i32 (...) @get_line()
  %99 = load i8*, i8** @line, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @unterminated_comment(%struct.ainfo* %4)
  br label %103

103:                                              ; preds = %101, %97
  br label %104

104:                                              ; preds = %103, %94
  br label %68

105:                                              ; preds = %42
  br label %106

106:                                              ; preds = %105, %37
  %107 = load %struct.mstring*, %struct.mstring** %2, align 8
  %108 = call i8* @msdone(%struct.mstring* %107)
  store i8* %108, i8** %1, align 8
  br label %109

109:                                              ; preds = %106, %84
  %110 = load i8*, i8** %1, align 8
  ret i8* %110
}

declare dso_local %struct.mstring* @msnew(...) #1

declare dso_local i32 @mputc(%struct.mstring*, i8 signext) #1

declare dso_local i32 @dup_line(...) #1

declare dso_local i32 @FREE(i32) #1

declare dso_local i8* @msdone(%struct.mstring*) #1

declare dso_local i32 @get_line(...) #1

declare dso_local i32 @unterminated_comment(%struct.ainfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
