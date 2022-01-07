; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_core_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_core_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32* }

@core_bfd = common dso_local global i32* null, align 8
@null_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot close \22%s\22: %s\00", align 1
@core_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@core_vec = common dso_local global i32* null, align 8
@core_gdbarch = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @core_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @core_bfd, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load i32, i32* @null_ptid, align 4
  store i32 %7, i32* @inferior_ptid, align 4
  %8 = load i32*, i32** @core_bfd, align 8
  %9 = call i8* @bfd_get_filename(i32* %8)
  store i8* %9, i8** %3, align 8
  %10 = load i32*, i32** @core_bfd, align 8
  %11 = call i32 @bfd_close(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (...) @bfd_get_error()
  %16 = call i32 @bfd_errmsg(i32 %15)
  %17 = call i32 @warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %16)
  br label %18

18:                                               ; preds = %13, %6
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @xfree(i8* %19)
  store i32* null, i32** @core_bfd, align 8
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 0), align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 0), align 8
  %25 = call i32 @xfree(i8* %24)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 1), align 8
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26, %1
  store i32* null, i32** @core_vec, align 8
  store i32* null, i32** @core_gdbarch, align 8
  ret void
}

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local i32 @warning(i8*, i8*, i32) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
