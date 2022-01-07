; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_CIFSCheckMFSymlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_CIFSCheckMFSymlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.cifs_fattr = type { i32, i32, i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@CIFS_MF_SYMLINK_FILE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSCheckMFSymlink(%struct.cifs_fattr* %0, i8* %1, %struct.cifs_sb_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_fattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcon_link*, align 8
  %14 = alloca %struct.cifs_tcon*, align 8
  %15 = alloca %struct.cifs_io_parms, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_4__, align 8
  store %struct.cifs_fattr* %0, %struct.cifs_fattr** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* @CIFS_NO_BUFFER, align 4
  store i32 %22, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %23 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %24 = call i32 @CIFSCouldBeMFSymlink(%struct.cifs_fattr* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %144

27:                                               ; preds = %4
  %28 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %29 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %28)
  store %struct.tcon_link* %29, %struct.tcon_link** %13, align 8
  %30 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %31 = call i64 @IS_ERR(%struct.tcon_link* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %35 = call i32 @PTR_ERR(%struct.tcon_link* %34)
  store i32 %35, i32* %5, align 4
  br label %144

36:                                               ; preds = %27
  %37 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %38 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %37)
  store %struct.cifs_tcon* %38, %struct.cifs_tcon** %14, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @FILE_OPEN, align 4
  %43 = load i32, i32* @GENERIC_READ, align 4
  %44 = load i32, i32* @CREATE_NOT_DIR, align 4
  %45 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %46 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %49 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @CIFSSMBOpen(i32 %39, %struct.cifs_tcon* %40, i8* %41, i32 %42, i32 %43, i32 %44, i32* %12, i32* %11, %struct.TYPE_4__* %21, i32 %47, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %36
  br label %140

57:                                               ; preds = %36
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %61 = call i64 @cpu_to_le64(i32 %60)
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @CIFSSMBClose(i32 %64, %struct.cifs_tcon* %65, i32 %66)
  br label %140

68:                                               ; preds = %57
  %69 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kmalloc(i32 %69, i32 %70)
  store i8* %71, i8** %16, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %140

77:                                               ; preds = %68
  %78 = load i8*, i8** %16, align 8
  store i8* %78, i8** %17, align 8
  %79 = load i32, i32* %12, align 4
  %80 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 3
  store i32 %83, i32* %84, align 8
  %85 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %86 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 2
  store %struct.cifs_tcon* %85, %struct.cifs_tcon** %86, align 8
  %87 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %89 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @CIFSSMBRead(i32 %90, %struct.cifs_io_parms* %15, i32* %18, i8** %17, i32* %19)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @CIFSSMBClose(i32 %92, %struct.cifs_tcon* %93, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %77
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 @kfree(i8* %99)
  br label %140

101:                                              ; preds = %77
  %102 = load i8*, i8** %16, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @CIFSParseMFSymlink(i8* %102, i32 %103, i32* %20, i32* null)
  store i32 %104, i32* %10, align 4
  %105 = load i8*, i8** %16, align 8
  %106 = call i32 @kfree(i8* %105)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %140

112:                                              ; preds = %101
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %140

116:                                              ; preds = %112
  %117 = load i32, i32* %20, align 4
  %118 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %119 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @S_IFMT, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %123 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @S_IFLNK, align 4
  %127 = load i32, i32* @S_IRWXU, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @S_IRWXG, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @S_IRWXO, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %134 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @DT_LNK, align 4
  %138 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %139 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %116, %115, %111, %98, %74, %63, %56
  %141 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %142 = call i32 @cifs_put_tlink(%struct.tcon_link* %141)
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %33, %26
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @CIFSCouldBeMFSymlink(%struct.cifs_fattr*) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @CIFSSMBRead(i32, %struct.cifs_io_parms*, i32*, i8**, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @CIFSParseMFSymlink(i8*, i32, i32*, i32*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
