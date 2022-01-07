; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_tdata.c_tdata_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_tdata.c_tdata_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8*, i8* }

@TDATA_LAYOUT_HASH_SIZE = common dso_local global i32 0, align 4
@tdesc_layouthash = common dso_local global i32 0, align 4
@tdesc_layoutcmp = common dso_local global i32* null, align 8
@TDATA_ID_HASH_SIZE = common dso_local global i32 0, align 4
@tdesc_idhash = common dso_local global i32 0, align 4
@tdesc_idcmp = common dso_local global i32* null, align 8
@IIDESC_HASH_SIZE = common dso_local global i32 0, align 4
@iidesc_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @tdata_new() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call %struct.TYPE_4__* @xcalloc(i32 40)
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %1, align 8
  %3 = load i32, i32* @TDATA_LAYOUT_HASH_SIZE, align 4
  %4 = load i32, i32* @tdesc_layouthash, align 4
  %5 = load i32*, i32** @tdesc_layoutcmp, align 8
  %6 = call i8* @hash_new(i32 %3, i32 %4, i32* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %6, i8** %8, align 8
  %9 = load i32, i32* @TDATA_ID_HASH_SIZE, align 4
  %10 = load i32, i32* @tdesc_idhash, align 4
  %11 = load i32*, i32** @tdesc_idcmp, align 8
  %12 = call i8* @hash_new(i32 %9, i32 %10, i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @IIDESC_HASH_SIZE, align 4
  %16 = load i32, i32* @iidesc_hash, align 4
  %17 = call i8* @hash_new(i32 %15, i32 %16, i32* null)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = call i32 @pthread_mutex_init(i32* %25, i32* null)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %27
}

declare dso_local %struct.TYPE_4__* @xcalloc(i32) #1

declare dso_local i8* @hash_new(i32, i32, i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
