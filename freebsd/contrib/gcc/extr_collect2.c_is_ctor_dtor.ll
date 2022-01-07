; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_is_ctor_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_is_ctor_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.names = type { i8*, i32, i32, i32 }

@is_ctor_dtor.special = internal constant [8 x %struct.names] [%struct.names { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 10, i32 1, i32 0 }, %struct.names { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 10, i32 2, i32 0 }, %struct.names { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 10, i32 1, i32 0 }, %struct.names { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 10, i32 2, i32 0 }, %struct.names { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 10, i32 5, i32 0 }, %struct.names { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 11, i32 3, i32 0 }, %struct.names { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 11, i32 4, i32 0 }, %struct.names zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"GLOBAL__I$\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"GLOBAL__D$\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"GLOBAL__I_\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"GLOBAL__D_\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"GLOBAL__F_\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"GLOBAL__FI_\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"GLOBAL__FD_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_ctor_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ctor_dtor(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.names*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = icmp eq i32 %11, 95
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  br label %8

16:                                               ; preds = %8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %68

21:                                               ; preds = %16
  store %struct.names* getelementptr inbounds ([8 x %struct.names], [8 x %struct.names]* @is_ctor_dtor.special, i64 0, i64 0), %struct.names** %4, align 8
  br label %22

22:                                               ; preds = %64, %21
  %23 = load %struct.names*, %struct.names** %4, align 8
  %24 = getelementptr inbounds %struct.names, %struct.names* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.names*, %struct.names** %4, align 8
  %30 = getelementptr inbounds %struct.names, %struct.names* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %28, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %27
  %37 = load %struct.names*, %struct.names** %4, align 8
  %38 = getelementptr inbounds %struct.names, %struct.names* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = icmp sge i64 %46, 2
  br i1 %47, label %48, label %63

48:                                               ; preds = %41, %36
  %49 = load i8*, i8** %3, align 8
  %50 = load %struct.names*, %struct.names** %4, align 8
  %51 = getelementptr inbounds %struct.names, %struct.names* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.names*, %struct.names** %4, align 8
  %55 = getelementptr inbounds %struct.names, %struct.names* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @strncmp(i8* %49, i32* %53, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.names*, %struct.names** %4, align 8
  %61 = getelementptr inbounds %struct.names, %struct.names* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %48, %41, %27
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.names*, %struct.names** %4, align 8
  %66 = getelementptr inbounds %struct.names, %struct.names* %65, i32 1
  store %struct.names* %66, %struct.names** %4, align 8
  br label %22

67:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %59, %20
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @strncmp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
