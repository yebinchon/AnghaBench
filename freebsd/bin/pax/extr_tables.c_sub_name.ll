; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_sub_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_sub_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, i32 }

@ntab = common dso_local global %struct.TYPE_3__** null, align 8
@N_TAB_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sub_name(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @ntab, align 8
  %10 = icmp eq %struct.TYPE_3__** %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %54

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @N_TAB_SZ, align 4
  %17 = call i64 @st_hash(i8* %13, i32 %15, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @ntab, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %18, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %7, align 8
  %22 = icmp eq %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %54

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %49, %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strcmp(i8* %29, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %40, 1
  %42 = call i32 @l_strncpy(i8* %36, i32 %39, i64 %41)
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 0, i8* %48, align 1
  br label %54

49:                                               ; preds = %28
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %7, align 8
  br label %25

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %35, %23, %11
  ret void
}

declare dso_local i64 @st_hash(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @l_strncpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
