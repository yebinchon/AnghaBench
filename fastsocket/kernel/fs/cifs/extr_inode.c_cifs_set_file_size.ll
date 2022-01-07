; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_set_file_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_set_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.iattr = type { i32 }
%struct.cifsFileInfo = type { %struct.tcon_link*, i32, i8* }
%struct.tcon_link = type { i32 }
%struct.cifsInodeInfo = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32, i8* }

@.str = private unnamed_addr constant [27 x i8] c"SetFSize for attrs rc = %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Wrt seteof rc %d\00", align 1
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"SetEOF by path (setattrs) rc = %d\00", align 1
@FILE_OPEN = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"wrt seteof rc %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.iattr*, i32, i8*)* @cifs_set_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_set_file_size(%struct.inode* %0, %struct.iattr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cifsFileInfo*, align 8
  %12 = alloca %struct.cifsInodeInfo*, align 8
  %13 = alloca %struct.cifs_sb_info*, align 8
  %14 = alloca %struct.tcon_link*, align 8
  %15 = alloca %struct.cifs_tcon*, align 8
  %16 = alloca %struct.cifs_io_parms, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.iattr* %1, %struct.iattr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %23)
  store %struct.cifsInodeInfo* %24, %struct.cifsInodeInfo** %12, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.cifs_sb_info* @CIFS_SB(i32 %27)
  store %struct.cifs_sb_info* %28, %struct.cifs_sb_info** %13, align 8
  store %struct.tcon_link* null, %struct.tcon_link** %14, align 8
  store %struct.cifs_tcon* null, %struct.cifs_tcon** %15, align 8
  %29 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %30 = call %struct.cifsFileInfo* @find_writable_file(%struct.cifsInodeInfo* %29, i32 1)
  store %struct.cifsFileInfo* %30, %struct.cifsFileInfo** %11, align 8
  %31 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %32 = icmp ne %struct.cifsFileInfo* %31, null
  br i1 %32, label %33, label %82

33:                                               ; preds = %4
  %34 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %35 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %17, align 8
  %37 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %38 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %18, align 4
  %40 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %41 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %40, i32 0, i32 0
  %42 = load %struct.tcon_link*, %struct.tcon_link** %41, align 8
  %43 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %42)
  store %struct.cifs_tcon* %43, %struct.cifs_tcon** %15, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %46 = load %struct.iattr*, %struct.iattr** %7, align 8
  %47 = getelementptr inbounds %struct.iattr, %struct.iattr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %17, align 8
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @CIFSSMBSetFileSize(i32 %44, %struct.cifs_tcon* %45, i32 %48, i8* %49, i32 %50, i32 0)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %53 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %33
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %60, %33
  %66 = load i8*, i8** %17, align 8
  %67 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 4
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* %18, align 4
  %69 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 3
  store i32 %68, i32* %69, align 8
  %70 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %71 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 2
  store %struct.cifs_tcon* %70, %struct.cifs_tcon** %71, align 8
  %72 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.iattr*, %struct.iattr** %7, align 8
  %74 = getelementptr inbounds %struct.iattr, %struct.iattr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @CIFSSMBWrite(i32 %77, %struct.cifs_io_parms* %16, i32* %19, i32* null, i32* null, i32 1)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %65, %60
  br label %85

82:                                               ; preds = %4
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %81
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %178

88:                                               ; preds = %85
  %89 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %90 = icmp eq %struct.cifs_tcon* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %93 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %92)
  store %struct.tcon_link* %93, %struct.tcon_link** %14, align 8
  %94 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %95 = call i64 @IS_ERR(%struct.tcon_link* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %99 = call i32 @PTR_ERR(%struct.tcon_link* %98)
  store i32 %99, i32* %5, align 4
  br label %201

100:                                              ; preds = %91
  %101 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %102 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %101)
  store %struct.cifs_tcon* %102, %struct.cifs_tcon** %15, align 8
  br label %103

103:                                              ; preds = %100, %88
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load %struct.iattr*, %struct.iattr** %7, align 8
  %108 = getelementptr inbounds %struct.iattr, %struct.iattr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %111 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %114 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %117 = and i32 %115, %116
  %118 = call i32 @CIFSSMBSetEOF(i32 %104, %struct.cifs_tcon* %105, i8* %106, i32 %109, i32 0, i32 %112, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %103
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @EOPNOTSUPP, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %171

130:                                              ; preds = %125, %103
  store i32 0, i32* %21, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* @FILE_OPEN, align 4
  %135 = load i32, i32* @GENERIC_WRITE, align 4
  %136 = load i32, i32* @CREATE_NOT_DIR, align 4
  %137 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %138 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %141 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %144 = and i32 %142, %143
  %145 = call i32 @SMBLegacyOpen(i32 %131, %struct.cifs_tcon* %132, i8* %133, i32 %134, i32 %135, i32 %136, i8** %20, i32* %21, i32* null, i32 %139, i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %130
  %149 = load i8*, i8** %20, align 8
  %150 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 4
  store i8* %149, i8** %150, align 8
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 3
  store i32 %153, i32* %154, align 8
  %155 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %156 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 2
  store %struct.cifs_tcon* %155, %struct.cifs_tcon** %156, align 8
  %157 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load %struct.iattr*, %struct.iattr** %7, align 8
  %159 = getelementptr inbounds %struct.iattr, %struct.iattr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %16, i32 0, i32 0
  store i32 %160, i32* %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @CIFSSMBWrite(i32 %162, %struct.cifs_io_parms* %16, i32* %22, i32* null, i32* null, i32 1)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %168 = load i8*, i8** %20, align 8
  %169 = call i32 @CIFSSMBClose(i32 %166, %struct.cifs_tcon* %167, i8* %168)
  br label %170

170:                                              ; preds = %148, %130
  br label %171

171:                                              ; preds = %170, %125
  %172 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %173 = icmp ne %struct.tcon_link* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %176 = call i32 @cifs_put_tlink(%struct.tcon_link* %175)
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %85
  %179 = load i32, i32* %10, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %178
  %182 = load %struct.iattr*, %struct.iattr** %7, align 8
  %183 = getelementptr inbounds %struct.iattr, %struct.iattr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %186 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load %struct.inode*, %struct.inode** %6, align 8
  %188 = load %struct.iattr*, %struct.iattr** %7, align 8
  %189 = getelementptr inbounds %struct.iattr, %struct.iattr* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @cifs_vmtruncate(%struct.inode* %187, i32 %190)
  store i32 %191, i32* %10, align 4
  %192 = load %struct.inode*, %struct.inode** %6, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.inode*, %struct.inode** %6, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @cifs_truncate_page(i32 %194, i32 %197)
  br label %199

199:                                              ; preds = %181, %178
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %199, %97
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifsFileInfo* @find_writable_file(%struct.cifsInodeInfo*, i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBSetFileSize(i32, %struct.cifs_tcon*, i32, i8*, i32, i32) #1

declare dso_local i32 @cifsFileInfo_put(%struct.cifsFileInfo*) #1

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local i32 @CIFSSMBWrite(i32, %struct.cifs_io_parms*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBSetEOF(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SMBLegacyOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i8**, i32*, i32*, i32, i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i8*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @cifs_vmtruncate(%struct.inode*, i32) #1

declare dso_local i32 @cifs_truncate_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
