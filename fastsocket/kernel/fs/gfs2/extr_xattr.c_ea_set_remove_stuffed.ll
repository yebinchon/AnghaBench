; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_remove_stuffed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_remove_stuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_ea_location = type { i32, %struct.gfs2_ea_header*, %struct.gfs2_ea_header* }
%struct.gfs2_ea_header = type { i32, i32, i32 }

@GFS2_EATYPE_UNUSED = common dso_local global i32 0, align 4
@GFS2_EAFLAG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_inode*, %struct.gfs2_ea_location*)* @ea_set_remove_stuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ea_set_remove_stuffed(%struct.gfs2_inode* %0, %struct.gfs2_ea_location* %1) #0 {
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_ea_location*, align 8
  %5 = alloca %struct.gfs2_ea_header*, align 8
  %6 = alloca %struct.gfs2_ea_header*, align 8
  %7 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store %struct.gfs2_ea_location* %1, %struct.gfs2_ea_location** %4, align 8
  %8 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %8, i32 0, i32 2
  %10 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  store %struct.gfs2_ea_header* %10, %struct.gfs2_ea_header** %5, align 8
  %11 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %11, i32 0, i32 1
  %13 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %12, align 8
  store %struct.gfs2_ea_header* %13, %struct.gfs2_ea_header** %6, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %4, align 8
  %18 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @gfs2_trans_add_meta(i32 %16, i32 %19)
  %21 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %22 = icmp ne %struct.gfs2_ea_header* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %5, align 8
  %25 = call i32 @GFS2_EA_IS_STUFFED(%struct.gfs2_ea_header* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @GFS2_EATYPE_UNUSED, align 4
  %29 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %5, align 8
  %30 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %68

31:                                               ; preds = %23
  %32 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %33 = call %struct.gfs2_ea_header* @GFS2_EA2NEXT(%struct.gfs2_ea_header* %32)
  %34 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %5, align 8
  %35 = icmp ne %struct.gfs2_ea_header* %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %38 = call %struct.gfs2_ea_header* @GFS2_EA2NEXT(%struct.gfs2_ea_header* %37)
  store %struct.gfs2_ea_header* %38, %struct.gfs2_ea_header** %6, align 8
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 0
  %41 = call i32 @GFS2_SB(i32* %40)
  %42 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %43 = call %struct.gfs2_ea_header* @GFS2_EA2NEXT(%struct.gfs2_ea_header* %42)
  %44 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %5, align 8
  %45 = icmp eq %struct.gfs2_ea_header* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @gfs2_assert_withdraw(i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %36, %31
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %51 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %50)
  %52 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %5, align 8
  %53 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %52)
  %54 = add nsw i64 %51, %53
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @cpu_to_be32(i64 %55)
  %57 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %58 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %5, align 8
  %60 = call i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load i32, i32* @GFS2_EAFLAG_LAST, align 4
  %64 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %65 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %27, %62, %49
  ret void
}

declare dso_local i32 @gfs2_trans_add_meta(i32, i32) #1

declare dso_local i32 @GFS2_EA_IS_STUFFED(%struct.gfs2_ea_header*) #1

declare dso_local %struct.gfs2_ea_header* @GFS2_EA2NEXT(%struct.gfs2_ea_header*) #1

declare dso_local i32 @gfs2_assert_withdraw(i32, i32) #1

declare dso_local i32 @GFS2_SB(i32*) #1

declare dso_local i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
