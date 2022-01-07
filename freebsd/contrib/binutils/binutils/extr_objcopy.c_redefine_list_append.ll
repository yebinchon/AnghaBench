; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_redefine_list_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_redefine_list_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redefine_node = type { %struct.redefine_node*, i8*, i8* }

@redefine_sym_list = common dso_local global %struct.redefine_node* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: Multiple redefinition of symbol \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"%s: Symbol \22%s\22 is target of more than one redefinition\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @redefine_list_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redefine_list_append(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.redefine_node**, align 8
  %8 = alloca %struct.redefine_node*, align 8
  %9 = alloca %struct.redefine_node*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.redefine_node** @redefine_sym_list, %struct.redefine_node*** %7, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load %struct.redefine_node**, %struct.redefine_node*** %7, align 8
  %12 = load %struct.redefine_node*, %struct.redefine_node** %11, align 8
  store %struct.redefine_node* %12, %struct.redefine_node** %8, align 8
  %13 = icmp ne %struct.redefine_node* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.redefine_node*, %struct.redefine_node** %8, align 8
  %17 = getelementptr inbounds %struct.redefine_node, %struct.redefine_node* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %15, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fatal(i32 %22, i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.redefine_node*, %struct.redefine_node** %8, align 8
  %29 = getelementptr inbounds %struct.redefine_node, %struct.redefine_node* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %27, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @fatal(i32 %34, i8* %35, i8* %36)
  br label %38

38:                                               ; preds = %33, %26
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.redefine_node*, %struct.redefine_node** %8, align 8
  %41 = getelementptr inbounds %struct.redefine_node, %struct.redefine_node* %40, i32 0, i32 0
  store %struct.redefine_node** %41, %struct.redefine_node*** %7, align 8
  br label %10

42:                                               ; preds = %10
  %43 = call %struct.redefine_node* @xmalloc(i32 24)
  store %struct.redefine_node* %43, %struct.redefine_node** %9, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @strdup(i8* %44)
  %46 = load %struct.redefine_node*, %struct.redefine_node** %9, align 8
  %47 = getelementptr inbounds %struct.redefine_node, %struct.redefine_node* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @strdup(i8* %48)
  %50 = load %struct.redefine_node*, %struct.redefine_node** %9, align 8
  %51 = getelementptr inbounds %struct.redefine_node, %struct.redefine_node* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.redefine_node*, %struct.redefine_node** %9, align 8
  %53 = getelementptr inbounds %struct.redefine_node, %struct.redefine_node* %52, i32 0, i32 0
  store %struct.redefine_node* null, %struct.redefine_node** %53, align 8
  %54 = load %struct.redefine_node*, %struct.redefine_node** %9, align 8
  %55 = load %struct.redefine_node**, %struct.redefine_node*** %7, align 8
  store %struct.redefine_node* %54, %struct.redefine_node** %55, align 8
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fatal(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.redefine_node* @xmalloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
