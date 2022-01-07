; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_global_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i32, i32 }

@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"elf_version error\00", align 1
@nm_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@PRINT_SYM_SYM = common dso_local global i32 0, align 4
@nm_opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PRINT_NAME_NONE = common dso_local global i32 0, align 4
@cmp_name = common dso_local global i32 0, align 4
@sym_elem_print_all = common dso_local global i32 0, align 4
@sym_value_dec_print = common dso_local global i32 0, align 4
@sym_size_dec_print = common dso_local global i32 0, align 4
@nm_out_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @global_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @global_init() #0 {
  %1 = load i32, i32* @EV_CURRENT, align 4
  %2 = call i64 @elf_version(i32 %1)
  %3 = load i64, i64* @EV_NONE, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @EXIT_FAILURE, align 4
  %7 = call i32 @errx(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i32 (...) @ELFTC_GETPROGNAME()
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nm_info, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nm_info, i32 0, i32 0), align 8
  %10 = load i32, i32* @PRINT_SYM_SYM, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 16), align 4
  %11 = load i32, i32* @PRINT_NAME_NONE, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 15), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 14), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 13), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 12), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 5), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 11), align 8
  store i32* @cmp_name, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 10), align 8
  store i32* @sym_elem_print_all, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 9), align 8
  store i32* @sym_value_dec_print, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 8), align 8
  store i32* @sym_size_dec_print, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 6), align 8
  %12 = call i32 @SLIST_INIT(i32* @nm_out_filter)
  ret void
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @ELFTC_GETPROGNAME(...) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
