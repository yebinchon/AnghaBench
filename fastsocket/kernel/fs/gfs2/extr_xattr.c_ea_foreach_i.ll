; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_foreach_i.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_foreach_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.gfs2_ea_header = type { i32 }

@GFS2_METATYPE_EA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)*, i8*)* @ea_foreach_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_foreach_i(%struct.gfs2_inode* %0, %struct.buffer_head* %1, i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gfs2_ea_header*, align 8
  %11 = alloca %struct.gfs2_ea_header*, align 8
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)* %2, i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.gfs2_ea_header* null, %struct.gfs2_ea_header** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 0
  %15 = call i32 @GFS2_SB(i32* %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %17 = load i32, i32* @GFS2_METATYPE_EA, align 4
  %18 = call i64 @gfs2_metatype_check(i32 %15, %struct.buffer_head* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %102

23:                                               ; preds = %4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %25 = call %struct.gfs2_ea_header* @GFS2_EA_BH2FIRST(%struct.buffer_head* %24)
  store %struct.gfs2_ea_header* %25, %struct.gfs2_ea_header** %10, align 8
  br label %26

26:                                               ; preds = %91, %23
  %27 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %28 = call i32 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %97

31:                                               ; preds = %26
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %36 = bitcast %struct.gfs2_ea_header* %35 to i8*
  %37 = icmp ule i8* %34, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %40 = call %struct.gfs2_ea_header* @GFS2_EA2NEXT(%struct.gfs2_ea_header* %39)
  %41 = bitcast %struct.gfs2_ea_header* %40 to i8*
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = icmp ule i8* %41, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %38, %31
  br label %97

52:                                               ; preds = %38
  %53 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %54 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GFS2_EATYPE_VALID(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %97

59:                                               ; preds = %52
  %60 = load i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)*, i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)** %8, align 8
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %64 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %11, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 %60(%struct.gfs2_inode* %61, %struct.buffer_head* %62, %struct.gfs2_ea_header* %63, %struct.gfs2_ea_header* %64, i8* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %102

71:                                               ; preds = %59
  %72 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %73 = call i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %77 = call %struct.gfs2_ea_header* @GFS2_EA2NEXT(%struct.gfs2_ea_header* %76)
  %78 = bitcast %struct.gfs2_ea_header* %77 to i8*
  %79 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = icmp ne i8* %78, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %97

89:                                               ; preds = %75
  br label %95

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  store %struct.gfs2_ea_header* %92, %struct.gfs2_ea_header** %11, align 8
  %93 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %94 = call %struct.gfs2_ea_header* @GFS2_EA2NEXT(%struct.gfs2_ea_header* %93)
  store %struct.gfs2_ea_header* %94, %struct.gfs2_ea_header** %10, align 8
  br label %26

95:                                               ; preds = %89
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %102

97:                                               ; preds = %88, %58, %51, %30
  %98 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %99 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %97, %95, %69, %20
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i64 @gfs2_metatype_check(i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @GFS2_SB(i32*) #1

declare dso_local %struct.gfs2_ea_header* @GFS2_EA_BH2FIRST(%struct.buffer_head*) #1

declare dso_local i32 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header*) #1

declare dso_local %struct.gfs2_ea_header* @GFS2_EA2NEXT(%struct.gfs2_ea_header*) #1

declare dso_local i32 @GFS2_EATYPE_VALID(i32) #1

declare dso_local i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
