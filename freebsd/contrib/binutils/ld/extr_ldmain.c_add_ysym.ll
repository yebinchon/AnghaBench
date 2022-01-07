; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_add_ysym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_add_ysym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@link_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@bfd_hash_newfunc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%P%F: bfd_hash_table_init failed: %E\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%P%F: bfd_hash_lookup failed: %E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_ysym(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 0), align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = call i32* @xmalloc(i32 4)
  store i32* %6, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 0), align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 0), align 8
  %8 = load i32, i32* @bfd_hash_newfunc, align 4
  %9 = call i32 @bfd_hash_table_init_n(i32* %7, i32 %8, i32 4, i32 61)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @einfo(i32 %12)
  br label %14

14:                                               ; preds = %11, %5
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_info, i32 0, i32 0), align 8
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32* @bfd_hash_lookup(i32* %16, i8* %17, i32 %18, i32 %19)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @einfo(i32 %23)
  br label %25

25:                                               ; preds = %22, %15
  ret void
}

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @bfd_hash_table_init_n(i32*, i32, i32, i32) #1

declare dso_local i32 @einfo(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @bfd_hash_lookup(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
