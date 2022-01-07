; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_xattr_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_ea_location = type { i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@GFS2_EA_MAX_NAME_LEN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@GFS2_DIF_APPENDONLY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_xattr_set(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gfs2_sbd*, align 8
  %15 = alloca %struct.gfs2_inode*, align 8
  %16 = alloca %struct.gfs2_ea_location, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %20)
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %14, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %22)
  store %struct.gfs2_inode* %23, %struct.gfs2_inode** %15, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %17, align 4
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i64 @IS_IMMUTABLE(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %6
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call i64 @IS_APPEND(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %6
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %156

36:                                               ; preds = %29
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @GFS2_EA_MAX_NAME_LEN, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %156

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @gfs2_xattr_remove(%struct.inode* %47, i32 %48, i8* %49)
  store i32 %50, i32* %7, align 4
  br label %156

51:                                               ; preds = %43
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @ea_check_size(%struct.gfs2_sbd* %52, i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @ERANGE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %156

60:                                               ; preds = %51
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @XATTR_REPLACE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @ENODATA, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %156

73:                                               ; preds = %65
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @ea_init(%struct.gfs2_inode* %74, i32 %75, i8* %76, i8* %77, i64 %78)
  store i32 %79, i32* %7, align 4
  br label %156

80:                                               ; preds = %60
  %81 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @gfs2_ea_find(%struct.gfs2_inode* %81, i32 %82, i8* %83, %struct.gfs2_ea_location* %16)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %18, align 4
  store i32 %88, i32* %7, align 4
  br label %156

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %16, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %140

93:                                               ; preds = %89
  %94 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %95 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @GFS2_DIF_APPENDONLY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %16, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @brelse(i32 %102)
  %104 = load i32, i32* @EPERM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %156

106:                                              ; preds = %93
  %107 = load i32, i32* @EEXIST, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @XATTR_CREATE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %16, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @GFS2_EA_IS_STUFFED(i64 %115)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %19, align 4
  %120 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @ea_set_i(%struct.gfs2_inode* %120, i32 %121, i8* %122, i8* %123, i64 %124, %struct.gfs2_ea_location* %16)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %113
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %133 = call i32 @ea_set_remove_unstuffed(%struct.gfs2_inode* %132, %struct.gfs2_ea_location* %16)
  br label %134

134:                                              ; preds = %131, %128, %113
  br label %135

135:                                              ; preds = %134, %106
  %136 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %16, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @brelse(i32 %137)
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* %7, align 4
  br label %156

140:                                              ; preds = %89
  %141 = load i32, i32* @ENODATA, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @XATTR_REPLACE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i8*, i8** %10, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @ea_set_i(%struct.gfs2_inode* %148, i32 %149, i8* %150, i8* %151, i64 %152, %struct.gfs2_ea_location* null)
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %147, %140
  %155 = load i32, i32* %18, align 4
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %154, %135, %100, %87, %73, %70, %57, %46, %40, %33
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @gfs2_xattr_remove(%struct.inode*, i32, i8*) #1

declare dso_local i64 @ea_check_size(%struct.gfs2_sbd*, i32, i64) #1

declare dso_local i32 @ea_init(%struct.gfs2_inode*, i32, i8*, i8*, i64) #1

declare dso_local i32 @gfs2_ea_find(%struct.gfs2_inode*, i32, i8*, %struct.gfs2_ea_location*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @GFS2_EA_IS_STUFFED(i64) #1

declare dso_local i32 @ea_set_i(%struct.gfs2_inode*, i32, i8*, i8*, i64, %struct.gfs2_ea_location*) #1

declare dso_local i32 @ea_set_remove_unstuffed(%struct.gfs2_inode*, %struct.gfs2_ea_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
