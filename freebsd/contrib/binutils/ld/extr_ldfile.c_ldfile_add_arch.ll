; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_add_arch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_add_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@ldfile_output_machine_name = common dso_local global i8* null, align 8
@search_arch_tail_ptr = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldfile_add_arch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @xstrdup(i8* %5)
  store i8* %6, i8** %3, align 8
  %7 = call %struct.TYPE_4__* @xmalloc(i32 16)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** @ldfile_output_machine_name, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  br label %14

14:                                               ; preds = %18, %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call signext i8 @TOLOWER(i8 signext %20)
  %22 = load i8*, i8** %3, align 8
  store i8 %21, i8* %22, align 1
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  br label %14

25:                                               ; preds = %14
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @search_arch_tail_ptr, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store %struct.TYPE_4__** %29, %struct.TYPE_4__*** @search_arch_tail_ptr, align 8
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.TYPE_4__* @xmalloc(i32) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
