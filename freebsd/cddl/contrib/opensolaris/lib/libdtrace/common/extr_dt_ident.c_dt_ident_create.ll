; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_ident_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_ident_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32*, i32, i32*, i32*, i8*, i32*, i8*, i32, i8*, i8*, i8* }

@CTF_ERR = common dso_local global i32 0, align 4
@yylineno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @dt_ident_create(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32* %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i8* null, i8** %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %9
  %25 = load i8*, i8** %11, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %21, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %9
  %29 = call %struct.TYPE_4__* @malloc(i32 104)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %20, align 8
  %30 = icmp eq %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %24
  %32 = load i8*, i8** %21, align 8
  %33 = call i32 @free(i8* %32)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  br label %75

34:                                               ; preds = %28
  %35 = load i8*, i8** %21, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 13
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 12
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 11
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 8
  store i32* %53, i32** %55, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 7
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* @CTF_ERR, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @yylineno, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %10, align 8
  br label %75

75:                                               ; preds = %34, %31
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  ret %struct.TYPE_4__* %76
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
