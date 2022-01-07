; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_zpldir.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_zpldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"not specified\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Character Device\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"3 (invalid)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Directory\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"5 (invalid)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Block Device\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"7 (invalid)\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Regular File\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"9 (invalid)\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Symbolic Link\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"11 (invalid)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Socket\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Door\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Event Port\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"15 (invalid)\00", align 1
@__const.dump_zpldir.typenames = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\09\09%s = %lld (type: %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i64)* @dump_zpldir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_zpldir(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca [16 x i8*], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = bitcast [16 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([16 x i8*]* @__const.dump_zpldir.typenames to i8*), i64 128, i1 false)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dump_zap_stats(i32* %13, i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @zap_cursor_init(i32* %9, i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %35, %4
  %21 = call i64 @zap_cursor_retrieve(i32* %9, %struct.TYPE_3__* %10)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ZFS_DIRENT_OBJ(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ZFS_DIRENT_TYPE(i32 %30)
  %32 = getelementptr inbounds [16 x i8*], [16 x i8*]* %11, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* %25, i32 %28, i8* %33)
  br label %35

35:                                               ; preds = %23
  %36 = call i32 @zap_cursor_advance(i32* %9)
  br label %20

37:                                               ; preds = %20
  %38 = call i32 @zap_cursor_fini(i32* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dump_zap_stats(i32*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @zap_cursor_init(i32*, i32*, i32) #2

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @ZFS_DIRENT_OBJ(i32) #2

declare dso_local i64 @ZFS_DIRENT_TYPE(i32) #2

declare dso_local i32 @zap_cursor_advance(i32*) #2

declare dso_local i32 @zap_cursor_fini(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
