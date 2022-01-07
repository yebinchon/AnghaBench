; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_insert_undefined.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_insert_undefined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@link_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%P%F: bfd_link_hash_lookup failed: %E\0A\00", align 1
@bfd_link_hash_new = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @insert_undefined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_undefined(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfd_link_hash_entry*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @link_info, i32 0, i32 0), align 4
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* @TRUE, align 4
  %7 = load i32, i32* @FALSE, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %4, i8* %5, i32 %6, i32 %7, i32 %8)
  store %struct.bfd_link_hash_entry* %9, %struct.bfd_link_hash_entry** %3, align 8
  %10 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %11 = icmp eq %struct.bfd_link_hash_entry* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @einfo(i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %17 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @bfd_link_hash_new, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i64, i64* @bfd_link_hash_undefined, align 8
  %23 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %24 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %26 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @link_info, i32 0, i32 0), align 4
  %30 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %31 = call i32 @bfd_link_add_undef(i32 %29, %struct.bfd_link_hash_entry* %30)
  br label %32

32:                                               ; preds = %21, %15
  ret void
}

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @einfo(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_link_add_undef(i32, %struct.bfd_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
